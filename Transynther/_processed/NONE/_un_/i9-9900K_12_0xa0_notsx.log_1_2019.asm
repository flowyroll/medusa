.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x946f, %rbp
nop
nop
cmp $57462, %r8
mov (%rbp), %rbx
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_WT_ht+0x532f, %r15
nop
nop
nop
cmp $55168, %rsi
mov $0x6162636465666768, %r12
movq %r12, (%r15)
nop
nop
nop
nop
cmp $21737, %r12
lea addresses_WC_ht+0x1582f, %rsi
lea addresses_UC_ht+0x90af, %rdi
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $67, %rcx
rep movsb
nop
nop
nop
nop
nop
and $20861, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_A+0x189af, %rsi
lea addresses_normal+0x128af, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $23553, %rdx
mov $4, %rcx
rep movsw
nop
nop
nop
nop
add %rdx, %rdx

// REPMOV
lea addresses_WT+0x178e3, %rsi
lea addresses_PSE+0x14f2f, %rdi
nop
nop
nop
nop
nop
sub $6999, %r8
mov $50, %rcx
rep movsw
nop
and $38929, %r14

// Load
lea addresses_D+0x14faf, %r14
and %rdx, %rdx
vmovups (%r14), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
inc %rdx

// Faulty Load
lea addresses_D+0x14faf, %rdx
nop
nop
nop
nop
and %rcx, %rcx
movb (%rdx), %r14b
lea oracles, %r14
and $0xff, %r14
shlq $12, %r14
mov (%r14,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_WT', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'15': 1}
15
*/
