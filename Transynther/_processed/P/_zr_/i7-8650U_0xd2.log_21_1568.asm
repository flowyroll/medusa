.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x5587, %rdx
nop
nop
add $17756, %r15
vmovups (%rdx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r8
nop
nop
nop
add %r10, %r10
lea addresses_normal_ht+0x1a36f, %rdx
nop
cmp $54618, %r11
and $0xffffffffffffffc0, %rdx
movaps (%rdx), %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0x3d87, %rsi
lea addresses_WC_ht+0x9667, %rdi
nop
xor %r8, %r8
mov $65, %rcx
rep movsq
sub %r15, %r15
lea addresses_WC_ht+0x8d87, %r8
nop
nop
xor %r10, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%r8)
nop
nop
nop
nop
inc %r8
lea addresses_A_ht+0x19d87, %r15
dec %r10
mov (%r15), %edi
nop
nop
nop
nop
sub $49200, %rsi
lea addresses_D_ht+0x6307, %rsi
lea addresses_A_ht+0x1187, %rdi
clflush (%rsi)
nop
and %r11, %r11
mov $3, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x8107, %r11
nop
sub $29673, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
and $0xffffffffffffffc0, %r11
vmovntdq %ymm1, (%r11)
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0xa187, %rsi
nop
and %rcx, %rcx
movb $0x61, (%rsi)
nop
nop
sub $580, %rdi
lea addresses_A_ht+0x1b887, %rsi
lea addresses_UC_ht+0x51a7, %rdi
nop
cmp $28187, %r8
mov $30, %rcx
rep movsb
nop
nop
xor %r15, %r15
lea addresses_A_ht+0x1b87, %r11
and $64218, %rcx
vmovups (%r11), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
nop
nop
xor $26106, %r10
lea addresses_WT_ht+0xf187, %rsi
nop
nop
nop
nop
xor %r15, %r15
movb (%rsi), %r8b
nop
nop
sub $53930, %r11
lea addresses_WT_ht+0x1a8c7, %r10
nop
add %rdi, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
sub %r10, %r10
lea addresses_normal_ht+0x7d87, %rsi
lea addresses_A_ht+0x3d87, %rdi
clflush (%rdi)
nop
inc %r15
mov $120, %rcx
rep movsl
nop
nop
cmp $41783, %r10
lea addresses_A_ht+0x2ba3, %r11
nop
nop
nop
nop
nop
sub $2301, %r8
mov $0x6162636465666768, %rdi
movq %rdi, (%r11)
nop
nop
nop
nop
nop
add $24758, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rax
push %rdi
push %rdx
push %rsi

// Faulty Load
mov $0xd87, %r12
nop
nop
nop
nop
nop
dec %rax
mov (%r12), %di
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'00': 21}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
