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
lea addresses_D_ht+0x6306, %rsi
lea addresses_D_ht+0xb606, %rdi
nop
dec %rax
mov $41, %rcx
rep movsq
nop
nop
nop
inc %r8
lea addresses_WT_ht+0x1e266, %rbx
nop
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %r8
movq %r8, %xmm5
movups %xmm5, (%rbx)
nop
nop
nop
inc %rax
lea addresses_WC_ht+0x6466, %rax
nop
nop
nop
cmp $11263, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%rax)
nop
nop
nop
add $45923, %rsi
lea addresses_normal_ht+0xddc7, %rsi
nop
nop
nop
nop
nop
cmp $5677, %rcx
movb (%rsi), %dl
nop
nop
and $60123, %rsi
lea addresses_normal_ht+0x170e6, %rdx
cmp $410, %rbx
movb (%rdx), %cl
sub $51256, %rbx
lea addresses_UC_ht+0x1aae6, %rsi
nop
add %rcx, %rcx
mov (%rsi), %rbx
nop
nop
sub $65520, %rdi
lea addresses_normal_ht+0x19c76, %rdi
nop
nop
nop
add $53326, %rdx
mov (%rdi), %rsi
xor %rsi, %rsi
lea addresses_A_ht+0x3666, %rsi
lea addresses_UC_ht+0x197dc, %rdi
nop
nop
nop
nop
nop
sub $24762, %rbp
mov $94, %rcx
rep movsq
nop
nop
and $45069, %rbx
lea addresses_UC_ht+0xe466, %rsi
lea addresses_A_ht+0x38e4, %rdi
nop
nop
nop
nop
cmp $46054, %r8
mov $97, %rcx
rep movsl
nop
dec %rdx
lea addresses_normal_ht+0x1e066, %rsi
lea addresses_WT_ht+0x13890, %rdi
nop
nop
nop
nop
nop
xor $51821, %r8
mov $113, %rcx
rep movsb
cmp %r8, %r8
lea addresses_A_ht+0x1666, %rsi
lea addresses_D_ht+0x15c98, %rdi
nop
cmp $63219, %rbp
mov $29, %rcx
rep movsq
nop
nop
nop
and $43928, %rax
lea addresses_normal_ht+0xdde6, %rsi
nop
nop
nop
nop
and %r8, %r8
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x1a0e6, %rsi
nop
nop
nop
nop
add %rcx, %rcx
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %rdi
nop
inc %rcx
lea addresses_D_ht+0x11866, %rsi
lea addresses_D_ht+0x8fb1, %rdi
nop
nop
nop
nop
dec %rax
mov $55, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rbp, %rbp
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
push %r12
push %r14
push %r8
push %r9
push %rax
push %rdi

// Store
mov $0x466, %rax
xor $62429, %r8
movl $0x51525354, (%rax)
nop
xor %r9, %r9

// Faulty Load
lea addresses_A+0x3466, %r9
nop
nop
xor %r14, %r14
vmovups (%r9), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rax
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': True, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'08': 2, '45': 13756, '00': 2543, '44': 2401, '46': 3126, 'ed': 1}
45 45 45 44 45 45 44 45 45 45 44 46 46 45 45 44 45 45 45 00 00 46 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 44 46 45 46 45 45 45 45 00 45 46 45 45 44 45 45 45 45 45 45 45 44 45 45 45 00 00 45 00 44 45 45 45 45 45 46 45 45 45 45 45 00 00 45 44 46 45 00 45 46 45 45 45 45 00 00 45 45 45 46 45 45 00 45 44 00 00 45 00 45 44 45 45 45 45 46 44 45 44 45 46 46 44 45 45 45 45 45 45 44 45 46 45 45 45 46 00 46 45 45 45 45 00 45 45 45 45 00 45 00 46 44 46 00 45 45 45 45 45 45 00 45 00 46 44 45 46 46 45 45 00 44 45 45 45 45 45 45 46 45 45 00 45 44 45 46 45 44 45 45 45 46 45 45 00 46 46 45 45 45 45 44 45 45 46 45 46 00 45 45 45 45 45 44 45 45 45 45 00 46 00 45 00 45 00 45 44 44 46 45 00 44 00 46 46 45 45 44 45 45 45 00 00 45 45 45 45 46 00 00 46 45 45 46 45 46 45 45 00 45 45 45 00 46 44 46 45 46 45 45 45 45 46 00 45 45 45 00 45 45 44 45 45 45 45 46 45 45 44 45 45 00 45 45 45 45 45 00 44 45 45 00 46 45 44 46 45 45 45 46 45 00 00 00 46 00 45 45 44 45 45 45 00 45 44 44 45 44 45 00 44 45 45 45 44 45 45 45 00 45 45 45 46 45 45 45 45 45 46 45 45 45 46 45 45 46 45 46 45 45 45 44 45 46 45 45 00 00 45 45 00 45 45 46 45 45 44 44 45 45 44 00 45 45 45 46 46 46 45 45 45 45 45 45 46 44 45 45 45 44 45 00 45 45 45 45 45 44 45 45 00 45 44 46 44 45 44 00 44 45 45 00 45 45 45 45 46 45 00 45 45 46 00 00 44 45 00 45 00 46 46 46 45 45 45 45 44 45 45 00 45 44 45 46 45 45 45 45 45 45 46 45 45 45 45 44 00 45 45 46 46 00 45 45 45 44 45 46 45 45 45 45 45 46 45 45 45 45 45 45 46 45 45 45 45 46 44 45 00 45 45 45 45 45 45 45 45 00 45 00 45 45 45 00 45 44 44 45 45 45 45 45 45 45 46 45 45 45 45 45 45 46 45 00 45 45 45 45 45 45 45 46 00 00 45 45 45 44 45 44 45 00 46 44 45 45 45 00 45 45 45 00 00 44 45 45 45 45 45 46 00 45 45 46 45 46 45 44 45 45 45 46 00 45 46 45 45 45 44 46 45 45 45 46 00 45 45 45 45 45 45 45 46 00 45 45 00 45 44 45 45 44 45 46 46 45 45 45 46 44 00 45 46 45 45 44 45 45 45 45 45 45 46 45 45 46 45 45 45 45 45 46 45 00 45 45 00 00 00 45 45 45 46 46 45 00 44 45 45 45 45 00 00 45 45 45 45 44 45 45 45 45 00 45 46 44 44 45 45 45 45 45 45 44 44 46 45 45 45 45 44 45 45 45 45 44 46 00 45 45 46 00 45 45 00 45 45 00 00 45 45 45 00 44 44 45 45 44 45 45 45 45 45 44 45 44 45 45 46 45 45 45 46 45 45 44 44 44 45 45 46 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 46 45 45 45 46 45 45 45 45 45 44 45 44 00 46 45 45 44 00 45 45 44 44 45 45 00 44 45 45 46 45 00 00 45 45 44 44 45 46 00 45 00 46 46 45 45 45 45 44 00 45 00 45 46 00 45 46 45 45 45 46 45 45 45 44 45 44 46 45 45 45 45 45 45 45 45 46 45 44 46 45 46 45 45 45 45 45 45 45 45 45 46 46 45 45 45 45 45 45 45 00 45 45 44 44 46 45 45 45 45 44 45 46 45 44 46 45 45 45 45 45 45 44 45 45 45 45 45 44 00 46 45 00 45 46 45 44 00 45 45 00 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 00 44 45 45 46 45 46 45 45 45 45 46 45 46 45 45 45 45 44 45 45 46 45 45 45 45 45 00 45 45 45 45 46 44 45 45 46 45 44 45 00 45 46 45 45 44 45 45 44 46 45 45 46 00 45 45 45 46 44 45 44 45 44 45 46 44 45 45 00 45 00 45 46 45 45 45 45 45 45 46 45 00 46 45 00 45 00 45 45
*/
