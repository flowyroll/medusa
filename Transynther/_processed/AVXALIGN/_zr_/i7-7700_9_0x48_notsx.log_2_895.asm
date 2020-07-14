.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x6b83, %rsi
lea addresses_D_ht+0xecc3, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %r11, %r11
mov $95, %rcx
rep movsl
nop
nop
nop
nop
add %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rdx

// Store
lea addresses_A+0x1cb03, %r10
nop
nop
nop
nop
cmp $25500, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, (%r10)
nop
nop
nop
nop
and %rdi, %rdi

// Faulty Load
lea addresses_US+0x16603, %rdi
add %rax, %rax
mov (%rdi), %r12d
lea oracles, %rax
and $0xff, %r12
shlq $12, %r12
mov (%rax,%r12,1), %r12
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 6}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'00': 2}
00 00
*/
