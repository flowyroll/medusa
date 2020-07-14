.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xeb1e, %rsi
nop
nop
nop
nop
nop
cmp $64187, %rbx
movw $0x6162, (%rsi)
add %rdx, %rdx
lea addresses_WC_ht+0x148ec, %rsi
nop
nop
dec %rdx
mov $0x6162636465666768, %rax
movq %rax, %xmm2
vmovups %ymm2, (%rsi)
cmp $44334, %rax
lea addresses_WT_ht+0x44ac, %rbp
nop
nop
nop
cmp $37776, %rdx
movb $0x61, (%rbp)
nop
nop
nop
and $36437, %rbp
lea addresses_normal_ht+0x5dec, %rsi
lea addresses_WC_ht+0x6cf4, %rdi
nop
nop
cmp $42595, %rdx
mov $64, %rcx
rep movsw
sub $59828, %rbp
lea addresses_normal_ht+0x6cec, %rsi
nop
nop
cmp %rax, %rax
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
nop
nop
xor $54588, %rsi
lea addresses_A_ht+0x15ee2, %rsi
nop
nop
nop
nop
nop
add %rbx, %rbx
vmovups (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
nop
nop
nop
cmp $34392, %r8
lea addresses_normal_ht+0x170e6, %rsi
lea addresses_WC_ht+0x3aec, %rdi
clflush (%rdi)
nop
nop
sub %rdx, %rdx
mov $100, %rcx
rep movsl
nop
nop
nop
add $8169, %r8
lea addresses_normal_ht+0x1d16c, %rdi
xor $14504, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm6
movups %xmm6, (%rdi)
nop
nop
xor %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rbp
push %rcx
push %rsi

// Load
lea addresses_A+0x1a3ec, %rbp
nop
nop
nop
nop
cmp %r8, %r8
movb (%rbp), %r10b
nop
nop
add $53954, %r8

// Faulty Load
lea addresses_UC+0x174ec, %r11
nop
nop
cmp %rsi, %rsi
vmovaps (%r11), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'00': 174}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
