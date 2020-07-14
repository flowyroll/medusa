.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1efea, %r11
nop
nop
nop
nop
cmp %r14, %r14
movw $0x6162, (%r11)
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0xc751, %rdx
nop
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
and $0xffffffffffffffc0, %rdx
movaps %xmm7, (%rdx)
nop
dec %rdx
lea addresses_WT_ht+0x1c96a, %r8
clflush (%r8)
nop
sub $60567, %rcx
movups (%r8), %xmm3
vpextrq $0, %xmm3, %r14
nop
sub %r8, %r8
lea addresses_D_ht+0x663a, %rsi
lea addresses_A_ht+0x94ba, %rdi
nop
dec %r15
mov $115, %rcx
rep movsb
nop
nop
nop
sub $62116, %r11
lea addresses_D_ht+0x423e, %rcx
nop
nop
inc %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm3
movups %xmm3, (%rcx)
nop
nop
and %r8, %r8
lea addresses_A_ht+0x45ea, %rsi
lea addresses_A_ht+0x5d72, %rdi
clflush (%rsi)
cmp %r14, %r14
mov $59, %rcx
rep movsq
nop
add $959, %rsi
lea addresses_WC_ht+0x1c806, %r8
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%r8), %rsi
dec %rcx
lea addresses_D_ht+0xa7aa, %rcx
nop
nop
nop
xor %r14, %r14
movw $0x6162, (%rcx)
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x7fca, %rsi
lea addresses_A_ht+0x886a, %rdi
cmp $22082, %r15
mov $75, %rcx
rep movsq
nop
nop
nop
sub %rdx, %rdx
lea addresses_normal_ht+0x19e5a, %r15
nop
add $22196, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm1
and $0xffffffffffffffc0, %r15
vmovntdq %ymm1, (%r15)
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x1ba6a, %rsi
lea addresses_UC_ht+0x11ea, %rdi
add $60079, %r8
mov $10, %rcx
rep movsb
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x7bea, %rsi
lea addresses_A_ht+0x17bc6, %rdi
nop
nop
nop
add %r14, %r14
mov $127, %rcx
rep movsl
nop
nop
nop
nop
sub $2241, %rdx
lea addresses_WT_ht+0x222a, %rdi
nop
nop
nop
nop
nop
cmp $31160, %r11
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
add $45077, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x466bbe0000000dea, %r11
nop
nop
nop
nop
and $58738, %rcx
movw $0x5152, (%r11)
nop
nop
nop
nop
nop
inc %r9

// Store
lea addresses_D+0x59ea, %rcx
clflush (%rcx)
nop
nop
nop
cmp $59393, %rbx
movw $0x5152, (%rcx)
nop
nop
nop
nop
sub $13423, %rdx

// Faulty Load
mov $0x466bbe0000000dea, %r9
sub %rcx, %rcx
vmovups (%r9), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r11
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'52': 21314, '5f': 300, '00': 215}
52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 5f 52 5f 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 5f 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 5f 52 52 52 52 52 52 5f 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
