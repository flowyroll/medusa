.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x7bfc, %rcx
nop
and %rdx, %rdx
mov $0x6162636465666768, %r10
movq %r10, (%rcx)
nop
add $27952, %r14
lea addresses_D_ht+0x1187c, %r9
add %r8, %r8
movb (%r9), %r15b
add %r14, %r14
lea addresses_WC_ht+0x125db, %rcx
nop
nop
nop
nop
nop
xor %r15, %r15
movb (%rcx), %r8b
nop
nop
nop
nop
xor $31739, %r9
lea addresses_A_ht+0x175fc, %r8
nop
nop
nop
cmp %r9, %r9
movups (%r8), %xmm1
vpextrq $1, %xmm1, %r14
nop
nop
nop
nop
nop
xor $60422, %r15
lea addresses_normal_ht+0xf7bc, %rsi
lea addresses_normal_ht+0x1303c, %rdi
and $39559, %r14
mov $54, %rcx
rep movsq
nop
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0x2ffc, %rsi
lea addresses_normal_ht+0x27fc, %rdi
nop
nop
dec %rdx
mov $91, %rcx
rep movsq
nop
cmp $26922, %rdx
lea addresses_WT_ht+0x1a440, %rsi
lea addresses_D_ht+0xc7fc, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $38017, %r15
mov $64, %rcx
rep movsq
dec %r9
lea addresses_A_ht+0x1bfc, %rsi
lea addresses_A_ht+0x16ffc, %rdi
nop
add %r8, %r8
mov $42, %rcx
rep movsb
sub $55846, %r8
lea addresses_WC_ht+0x87fc, %r9
clflush (%r9)
cmp %rdx, %rdx
mov (%r9), %r15w
nop
nop
nop
cmp %r9, %r9
lea addresses_UC_ht+0x1cfbc, %rsi
lea addresses_D_ht+0x1c1aa, %rdi
nop
nop
inc %r9
mov $108, %rcx
rep movsl
cmp %rdi, %rdi
lea addresses_D_ht+0x11252, %rsi
lea addresses_WT_ht+0x127fc, %rdi
clflush (%rdi)
nop
and $21050, %rdx
mov $67, %rcx
rep movsw
nop
nop
nop
xor $52255, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rax
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_US+0x1073c, %rdx
nop
nop
nop
xor %rsi, %rsi
movl $0x51525354, (%rdx)
nop
nop
xor %rcx, %rcx

// Store
lea addresses_A+0x5c7c, %r8
nop
nop
nop
nop
nop
xor $8929, %rdx
movb $0x51, (%r8)
nop
and %r12, %r12

// Faulty Load
lea addresses_PSE+0x97fc, %rax
sub $51302, %rbx
movups (%rax), %xmm3
vpextrq $1, %xmm3, %rcx
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_PSE', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}, 'dst': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
