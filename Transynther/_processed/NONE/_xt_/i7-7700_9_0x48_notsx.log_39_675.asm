.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x4404, %r10
nop
cmp $12981, %rbp
movb (%r10), %r15b
nop
nop
nop
dec %r12
lea addresses_WC_ht+0x11404, %r15
nop
add %rdx, %rdx
mov $0x6162636465666768, %r9
movq %r9, (%r15)
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_normal_ht+0x18204, %rsi
lea addresses_A_ht+0xbac0, %rdi
nop
nop
nop
nop
nop
add %r15, %r15
mov $67, %rcx
rep movsb
sub $64037, %rdi
lea addresses_D_ht+0x12304, %rbp
nop
nop
nop
add $10318, %r9
mov (%rbp), %edi
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_normal_ht+0x17c04, %r9
nop
nop
and %rsi, %rsi
and $0xffffffffffffffc0, %r9
movaps (%r9), %xmm5
vpextrq $1, %xmm5, %r10
nop
nop
nop
dec %r9
lea addresses_normal_ht+0x2704, %rcx
nop
cmp %rsi, %rsi
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x11b44, %rsi
nop
nop
nop
nop
nop
sub %rbp, %rbp
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %r10
nop
nop
nop
add $8822, %rsi
lea addresses_WC_ht+0x14804, %rbp
nop
nop
nop
nop
and $12288, %rdi
movb (%rbp), %r15b
nop
nop
add $14545, %rcx
lea addresses_UC_ht+0x8a04, %r9
nop
nop
nop
nop
cmp $51576, %r10
vmovups (%r9), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
nop
cmp $64920, %r15
lea addresses_UC_ht+0x1eed4, %rbp
and %rsi, %rsi
movw $0x6162, (%rbp)
nop
add $14959, %rsi
lea addresses_WT_ht+0x15804, %rdx
nop
nop
nop
nop
nop
and $38746, %r12
mov (%rdx), %bp
nop
nop
nop
and %r10, %r10
lea addresses_WC_ht+0x26b4, %rdi
nop
nop
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
movups %xmm5, (%rdi)
and $40069, %r9
lea addresses_UC_ht+0x18c84, %rdx
nop
nop
nop
nop
and $52850, %rdi
movb $0x61, (%rdx)
nop
nop
sub $48517, %r9
lea addresses_WT_ht+0x1cb84, %rsi
lea addresses_normal_ht+0x40ce, %rdi
and $21640, %r9
mov $81, %rcx
rep movsq
nop
nop
nop
nop
dec %rdi
lea addresses_D_ht+0xc504, %r9
xor $50145, %rsi
movw $0x6162, (%r9)
nop
and $38132, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x15984, %rsi
lea addresses_WC+0x5404, %rdi
nop
nop
nop
nop
nop
dec %rbp
mov $93, %rcx
rep movsl
xor %r9, %r9

// REPMOV
lea addresses_WT+0x14404, %rsi
lea addresses_UC+0x1ff4, %rdi
clflush (%rdi)
nop
nop
nop
sub $63623, %r11
mov $35, %rcx
rep movsl
nop
nop
and $46311, %r11

// Store
lea addresses_A+0x1e504, %r12
nop
nop
nop
nop
nop
and $57742, %r11
movb $0x51, (%r12)
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_UC+0x4424, %r9
clflush (%r9)
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
movups %xmm2, (%r9)
and $28555, %r12

// Store
lea addresses_US+0x7a84, %r8
clflush (%r8)
nop
cmp %rcx, %rcx
movw $0x5152, (%r8)
nop
nop
cmp $63481, %r11

// Faulty Load
lea addresses_RW+0x8404, %r8
nop
add %rcx, %rcx
mov (%r8), %rdi
lea oracles, %rbp
and $0xff, %rdi
shlq $12, %rdi
mov (%rbp,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC'}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 7}, 'OP': 'STOR'}
{'32': 39}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
