.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x6529, %rsi
lea addresses_PSE+0x6529, %rdi
clflush (%rsi)
nop
nop
inc %rbx
mov $86, %rcx
rep movsq
nop
sub %rsi, %rsi

// Store
lea addresses_UC+0x7c79, %rsi
nop
inc %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovntdq %ymm4, (%rsi)
nop
nop
xor %rax, %rax

// Store
lea addresses_WC+0x3d29, %r10
nop
inc %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r10)
nop
nop
nop
nop
cmp $56787, %rsi

// Store
mov $0xc2d, %rsi
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
cmp %rcx, %rcx

// Faulty Load
lea addresses_PSE+0x6529, %rsi
nop
xor $60257, %r14
mov (%rsi), %ebx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_PSE'}, 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'33': 28}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
