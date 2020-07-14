.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1ba6f, %r10
clflush (%r10)
nop
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %rdx
movq %rdx, (%r10)
nop
nop
nop
nop
cmp $20040, %r13
lea addresses_UC_ht+0x1b4d3, %rdx
nop
nop
nop
nop
and $59937, %r11
mov $0x6162636465666768, %r13
movq %r13, %xmm2
vmovups %ymm2, (%rdx)
cmp $37219, %r10
lea addresses_D_ht+0x1c377, %rsi
lea addresses_A_ht+0x1c837, %rdi
clflush (%rsi)
nop
nop
sub %r10, %r10
mov $88, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $55761, %rsi
lea addresses_D_ht+0xfbf7, %rsi
lea addresses_UC_ht+0xa8d7, %rdi
clflush (%rdi)
nop
nop
nop
and %rdx, %rdx
mov $77, %rcx
rep movsb
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_UC_ht+0x15a37, %rsi
lea addresses_D_ht+0x157f7, %rdi
nop
nop
cmp %r11, %r11
mov $33, %rcx
rep movsq
nop
nop
nop
nop
and %r8, %r8
lea addresses_WT_ht+0xb637, %rsi
lea addresses_D_ht+0x8f37, %rdi
xor %r11, %r11
mov $60, %rcx
rep movsl
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0x1e1f7, %rdi
nop
xor $25453, %rdx
movl $0x61626364, (%rdi)
nop
nop
nop
sub $40933, %r10
lea addresses_WC_ht+0x183cf, %rsi
lea addresses_WC_ht+0x337, %rdi
nop
add $4117, %r11
mov $45, %rcx
rep movsw
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_D_ht+0xb417, %rsi
lea addresses_D_ht+0x3337, %rdi
nop
nop
sub $43457, %r8
mov $51, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0xcb37, %rsi
lea addresses_UC_ht+0x19d7, %rdi
clflush (%rsi)
sub %r11, %r11
mov $4, %rcx
rep movsb
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0x26cf, %rsi
lea addresses_normal_ht+0x10477, %rdi
clflush (%rdi)
nop
nop
nop
cmp %rdx, %rdx
mov $127, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $2558, %rsi
lea addresses_A_ht+0x15f21, %rdi
xor $57272, %r11
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r8
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x737, %r10
nop
nop
inc %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
and $0xffffffffffffffc0, %r10
movntdq %xmm5, (%r10)
nop
nop
nop
add $58632, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %r9
push %rcx
push %rdi

// Faulty Load
lea addresses_WC+0xb37, %r9
sub $16158, %r11
vmovups (%r9), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rcx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'00': 5345, '46': 236, 'ff': 1315, '47': 200, '48': 189, '49': 21, '02': 13, '52': 13, '04': 5, '45': 2, 'c0': 1, '80': 1, '24': 1}
00 46 ff 00 ff 00 00 00 ff 00 46 00 00 00 ff 47 00 00 00 00 00 00 00 00 ff 00 00 00 00 48 00 00 ff 00 00 00 00 00 00 00 46 00 ff 46 ff ff ff 00 ff 00 00 00 00 00 46 ff ff ff 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 ff ff 00 00 00 00 00 00 00 00 ff 00 ff 00 00 00 ff 00 47 00 46 ff ff 00 00 00 ff 00 00 00 ff 00 00 46 00 ff 00 47 00 ff 00 ff ff 46 00 00 47 00 00 00 ff 00 00 00 00 ff ff 00 49 00 00 00 00 00 00 00 00 00 00 ff 00 ff ff 00 ff ff ff 00 00 00 ff 00 00 00 00 00 46 00 00 48 00 47 00 00 00 00 00 00 00 00 ff 00 00 00 00 ff ff ff ff 00 46 00 ff 00 ff 46 48 00 00 00 00 00 02 ff 00 00 ff 00 00 00 00 ff ff 00 00 00 00 00 00 00 00 00 ff 48 00 00 00 00 00 ff 00 00 00 ff 00 ff ff 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 ff 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 ff 00 ff ff 00 00 ff 00 00 47 ff 46 ff ff 48 00 00 00 00 00 00 00 ff ff 00 00 00 00 ff 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 02 ff 46 00 00 48 00 00 00 00 00 00 00 00 00 ff 48 00 00 ff ff 48 00 00 ff 00 00 00 00 46 ff 00 46 00 00 ff 00 00 00 00 00 00 00 00 ff 00 ff ff 00 00 00 48 00 00 00 00 00 00 00 ff ff 00 ff 00 00 00 00 00 00 00 00 00 ff ff 00 ff 47 ff 00 ff 00 00 47 48 00 00 00 48 00 46 00 00 00 ff 00 00 00 00 00 ff ff 47 00 00 00 ff ff 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 47 00 00 00 00 00 00 00 47 00 00 00 ff 00 00 46 ff ff 00 00 00 ff ff 00 00 47 00 00 00 48 ff ff 00 ff 00 00 00 ff 00 00 00 ff 00 00 48 00 00 47 00 00 00 48 ff 00 00 00 00 00 00 ff 00 00 00 ff ff 00 47 00 47 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 ff 00 ff ff ff 00 00 00 46 47 46 48 00 ff 00 00 00 ff ff 00 00 46 00 00 00 00 00 46 00 ff ff 00 00 00 47 00 47 00 00 00 ff 00 ff ff 00 00 00 00 00 00 47 ff 00 00 48 ff 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 ff 00 ff 00 00 00 ff 00 00 00 00 00 00 00 00 ff ff ff ff 00 00 00 00 00 00 47 ff 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 ff 00 ff ff 00 00 00 ff 00 00 00 00 00 48 00 ff ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 46 00 00 00 ff 00 00 48 00 00 00 00 00 00 00 ff 00 00 46 47 00 00 47 00 00 00 00 00 00 00 00 00 00 00 ff ff 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 ff 48 00 00 00 00 ff 00 00 00 00 ff 00 00 00 00 00 00 00 46 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 46 00 48 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 ff 47 00 00 00 00 00 48 00 00 00 00 00 ff 00 00 00 ff ff ff 00 00 00 00 ff 00 00 00 00 ff 48 00 ff 49 00 00 00 00 00 00 00 00 00 00 49 ff 00 00 00 00 00 46 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 46 00 47 00 00 00 47 00 47 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 ff 00 ff 00 00 00 00 ff 46 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 ff 48 ff 46 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 ff ff 00 ff 00 ff 00 00
*/
