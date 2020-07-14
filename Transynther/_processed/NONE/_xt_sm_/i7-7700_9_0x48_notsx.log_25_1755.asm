.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x326b, %rsi
lea addresses_WC+0x41eb, %rdi
nop
nop
nop
nop
nop
dec %r12
mov $91, %rcx
rep movsl
nop
add $8311, %rsi

// Store
lea addresses_RW+0x186eb, %r14
nop
nop
nop
nop
nop
cmp %r12, %r12
movw $0x5152, (%r14)
add %r12, %r12

// Load
lea addresses_UC+0x12eeb, %rbx
nop
nop
nop
xor $43750, %rcx
movb (%rbx), %al
nop
add %r14, %r14

// Store
lea addresses_normal+0xa4eb, %rbx
nop
nop
nop
nop
nop
cmp $27886, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rbx)
nop
cmp %r12, %r12

// Load
lea addresses_UC+0x1ab, %rcx
nop
sub %r12, %r12
mov (%rcx), %r14
nop
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_normal+0x1cde3, %r14
cmp %r12, %r12
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%r14)
add $60811, %rcx

// Store
mov $0x337d8b0000000eeb, %rdi
nop
nop
and $41474, %rcx
movb $0x51, (%rdi)
and $26641, %rdi

// Store
lea addresses_normal+0xeeb, %r12
clflush (%r12)
nop
nop
nop
and $47549, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r12)
nop
nop
nop
nop
nop
sub %rsi, %rsi

// Load
lea addresses_RW+0x17143, %rsi
inc %rdi
movb (%rsi), %al
nop
and %rbx, %rbx

// Faulty Load
lea addresses_normal+0xeeb, %r12
nop
nop
nop
nop
nop
add $9166, %r14
mov (%r12), %ecx
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'58': 25}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
