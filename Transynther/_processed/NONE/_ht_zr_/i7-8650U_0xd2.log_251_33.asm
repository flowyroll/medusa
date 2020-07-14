.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x3662, %rsi
lea addresses_UC_ht+0x1b862, %rdi
sub %rax, %rax
mov $79, %rcx
rep movsw
nop
xor $61350, %r9
lea addresses_D_ht+0x13b62, %rdx
xor %rdi, %rdi
vmovups (%rdx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rax
nop
nop
nop
nop
nop
and $16872, %rax
lea addresses_A_ht+0x1c62, %rax
nop
nop
nop
xor %rbx, %rbx
vmovups (%rax), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdx
nop
nop
nop
xor $7260, %rax
lea addresses_WT_ht+0x88a, %rsi
lea addresses_WT_ht+0x196c2, %rdi
nop
nop
nop
and %r11, %r11
mov $78, %rcx
rep movsq
nop
xor %r9, %r9
lea addresses_A_ht+0x10022, %rax
add %r11, %r11
vmovups (%rax), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdi
nop
nop
and $23363, %r11
lea addresses_WT_ht+0x1bc62, %rbx
nop
nop
nop
nop
dec %rax
mov $0x6162636465666768, %r9
movq %r9, (%rbx)
nop
add $38240, %r9
lea addresses_UC_ht+0x18a2, %rsi
nop
nop
and %r11, %r11
mov (%rsi), %rdi
nop
nop
nop
nop
nop
sub %r11, %r11
lea addresses_D_ht+0x9e62, %rsi
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %r9
movq %r9, (%rsi)
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x2f62, %rdi
nop
nop
nop
nop
add $58661, %rsi
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r11
nop
nop
nop
inc %rbx
lea addresses_UC_ht+0x17262, %rdx
nop
nop
nop
nop
inc %rcx
movups (%rdx), %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x1262, %rcx
xor $15911, %rdi
mov (%rcx), %r11
nop
add $43230, %rdi
lea addresses_WC_ht+0x17fe2, %rsi
sub $54769, %rbx
movw $0x6162, (%rsi)
nop
sub $54265, %r11
lea addresses_D_ht+0x19e62, %rsi
lea addresses_normal_ht+0x1e262, %rdi
nop
nop
nop
add %rbx, %rbx
mov $26, %rcx
rep movsb
nop
cmp $45628, %rdi
lea addresses_normal_ht+0x1462a, %rsi
nop
nop
nop
nop
nop
sub %r9, %r9
movw $0x6162, (%rsi)
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x13562, %rsi
lea addresses_D_ht+0x4f30, %rdi
nop
nop
add %rdx, %rdx
mov $28, %rcx
rep movsb
nop
nop
nop
nop
inc %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rbp
push %rsi

// Store
lea addresses_UC+0x14ff6, %r8
clflush (%r8)
nop
nop
nop
nop
cmp %r12, %r12
movw $0x5152, (%r8)
nop
nop
dec %r15

// Faulty Load
lea addresses_WC+0x1a662, %r12
nop
and %r8, %r8
vmovups (%r12), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbp
lea oracles, %r15
and $0xff, %rbp
shlq $12, %rbp
mov (%r15,%rbp,1), %rbp
pop %rsi
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'00': 94, '46': 155, '45': 2}
00 46 46 46 46 46 46 00 00 00 00 46 46 00 00 46 00 46 00 00 00 46 00 45 00 46 46 00 46 46 46 46 46 00 00 00 00 46 00 46 46 46 46 46 46 00 46 00 46 00 46 46 00 46 46 00 00 00 00 46 46 46 00 46 46 46 00 00 46 00 46 46 46 46 00 46 46 46 46 00 46 46 46 46 46 46 46 46 00 46 46 00 46 00 46 46 00 46 00 00 46 46 00 00 46 46 46 00 00 46 46 46 46 46 00 00 46 00 46 45 00 46 00 46 46 00 46 46 46 00 46 46 46 46 00 46 00 46 46 00 46 00 46 46 00 46 46 00 46 00 00 46 46 46 00 46 46 46 46 00 46 00 46 00 00 46 00 46 00 00 46 46 46 00 46 46 46 46 46 00 00 46 46 46 46 00 46 46 00 46 46 46 00 00 00 46 46 46 00 46 00 46 46 46 46 00 00 46 46 46 00 46 46 46 46 00 00 46 46 46 00 46 46 00 46 46 46 00 00 00 00 00 00 46 00 46 46 46 46 00 00 46 46 46 46 46 46 00 46 46 00
*/
