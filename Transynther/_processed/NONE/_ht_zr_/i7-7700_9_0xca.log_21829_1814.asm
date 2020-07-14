.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x175ac, %rdi
nop
nop
nop
add $16954, %r15
movb $0x61, (%rdi)
nop
nop
add $10324, %rbx
lea addresses_WC_ht+0x346c, %rsi
lea addresses_A_ht+0x1228c, %rdi
nop
nop
nop
and $28745, %r12
mov $114, %rcx
rep movsl
nop
nop
nop
and $27599, %r12
lea addresses_A_ht+0xc0c, %r15
nop
nop
mfence
and $0xffffffffffffffc0, %r15
movntdqa (%r15), %xmm6
vpextrq $0, %xmm6, %rsi
and $34226, %rdi
lea addresses_A_ht+0x14e4, %rsi
lea addresses_WC_ht+0xac2e, %rdi
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $83, %rcx
rep movsb
sub %rdi, %rdi
lea addresses_WT_ht+0x1ad5c, %r12
sub %rcx, %rcx
movb (%r12), %r8b
nop
nop
sub %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x95ac, %r15
xor $10036, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movups %xmm7, (%r15)
nop
nop
cmp $55310, %rdi

// Store
mov $0x5ac, %rcx
and $41577, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movntdq %xmm2, (%rcx)
nop
nop
and $51620, %rsi

// Store
lea addresses_D+0x9bac, %rbx
nop
nop
and %rax, %rax
movb $0x51, (%rbx)
nop
nop
nop
and $26781, %r15

// Faulty Load
lea addresses_UC+0x8dac, %rbx
nop
nop
dec %rax
vmovups (%rbx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
lea oracles, %r10
and $0xff, %rdi
shlq $12, %rdi
mov (%r10,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 3, 'AVXalign': True, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'45': 19, '48': 14517, '00': 7293}
48 00 00 48 00 48 48 48 48 00 48 48 48 00 00 48 00 48 48 48 48 00 00 48 48 48 00 48 00 48 00 00 00 48 48 00 48 48 48 48 48 00 48 00 00 00 48 48 00 00 48 48 48 48 48 00 48 48 00 00 48 48 48 00 48 48 48 48 48 00 00 00 00 00 00 48 48 00 00 48 48 00 00 48 48 00 48 48 48 48 48 00 48 00 48 48 48 00 48 00 48 48 00 48 48 48 00 48 48 48 48 00 00 00 48 48 48 48 00 00 00 00 48 48 48 48 00 48 48 48 00 48 48 00 00 00 00 48 48 00 48 48 48 00 48 48 48 00 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 00 48 00 00 00 00 00 00 00 48 48 48 48 48 48 48 48 00 00 00 00 48 48 00 48 00 48 00 00 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 00 00 00 00 48 00 00 48 48 00 48 48 00 00 00 00 00 48 00 00 48 48 48 00 48 48 48 48 48 48 00 00 00 00 00 00 00 48 00 00 48 48 48 48 48 00 00 48 48 48 00 00 48 48 48 00 00 48 00 48 48 48 00 00 48 48 48 00 48 48 48 48 48 48 48 00 00 00 00 00 00 48 00 48 48 48 48 48 00 48 00 48 00 48 48 48 48 00 48 00 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 00 48 48 48 00 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 00 00 00 48 48 48 00 48 48 00 48 48 00 48 00 48 48 48 48 48 00 48 00 48 48 48 48 00 48 48 00 48 00 00 48 48 48 48 48 00 48 48 00 00 48 00 48 48 00 00 48 48 00 00 48 00 00 00 48 48 00 00 00 48 48 48 00 00 48 00 00 48 48 48 00 48 48 48 48 48 48 00 48 48 00 00 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 00 48 48 48 48 48 48 48 00 00 48 48 00 48 48 48 00 48 48 00 00 48 00 48 48 48 48 00 48 00 00 00 00 48 00 00 48 48 48 00 00 00 00 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 00 48 48 48 00 00 48 48 48 48 48 48 48 48 00 00 48 00 48 00 00 48 00 48 00 48 48 00 48 48 48 48 48 00 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 00 00 00 48 48 00 00 00 48 00 48 48 48 48 00 00 48 48 48 48 48 48 48 00 00 48 00 00 00 00 48 00 00 00 48 00 48 48 48 48 00 00 48 48 00 48 48 00 00 48 48 48 00 48 48 48 48 48 00 48 48 48 48 00 48 48 00 48 48 48 48 00 48 00 48 48 48 00 00 00 00 48 00 48 48 48 48 48 48 00 00 48 00 00 48 00 00 48 00 48 48 00 00 00 48 00 48 00 48 00 00 48 48 48 48 48 48 48 48 00 48 48 48 48 00 48 00 48 48 48 48 48 48 00 48 48 48 48 48 00 48 48 48 00 48 00 48 48 00 48 00 48 00 00 48 48 48 00 48 48 48 48 00 48 48 00 48 00 48 48 00 48 00 48 00 48 48 48 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 00 00 00 48 48 48 48 48 00 00 00 48 48 48 48 00 48 48 00 48 48 48 48 00 48 00 00 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 00 48 00 00 00 00 00 00 48 48 00 48 00 48 48 00 45 00 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 48 00 48 48 00 00 48 00 00 00 48 48 48 00 48 48 00 48 48 48 00 48 00 48 48 48 48 00 48 00 00 00 00 00 00 48 48 00 48 48 48 48 48 48 48 00 00 48 00 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 00 00 00 48 48 48 48 48 48 00 48 00 48 48 48 00 48 48 48 00 48 48 00 48 48 48 48 00 48 00 48 00 48 00 00 00 00
*/
