.global s_prepare_buffers
s_prepare_buffers:
push %rbp
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1b847, %rbp
nop
nop
sub $23168, %rsi
movb (%rbp), %dl
nop
nop
nop
nop
nop
inc %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rbp
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi

// Load
mov $0x847, %r14
nop
nop
nop
nop
nop
sub %rax, %rax
movb (%r14), %r9b
nop
nop
nop
nop
nop
dec %r9

// Store
lea addresses_A+0x14047, %rax
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %r9
movq %r9, (%rax)
nop
nop
nop
nop
nop
and $3998, %rcx

// Store
lea addresses_PSE+0xb847, %rcx
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm1
vmovntdq %ymm1, (%rcx)
nop
nop
nop
nop
nop
add $6620, %r9

// Load
lea addresses_PSE+0x47, %r9
nop
nop
nop
nop
nop
cmp %r15, %r15
mov (%r9), %eax
nop
nop
nop
nop
xor %r14, %r14

// Store
lea addresses_RW+0x15047, %r14
xor $20949, %r9
movw $0x5152, (%r14)
add %r9, %r9

// Store
lea addresses_D+0x13d47, %rax
clflush (%rax)
sub $43346, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rax)

// Exception!!!
nop
nop
nop
nop
mov (0), %rdi
nop
nop
nop
nop
xor $24015, %rcx

// Store
lea addresses_RW+0x18947, %r15
and $59429, %r9
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movups %xmm6, (%r15)
nop
nop
nop
nop
nop
and $60878, %rcx

// Load
lea addresses_UC+0xb2d7, %rcx
nop
nop
nop
inc %r15
mov (%rcx), %r12d
nop
nop
xor %rax, %rax

// Store
lea addresses_A+0x76c7, %r9
nop
add %r12, %r12
mov $0x5152535455565758, %r15
movq %r15, (%r9)
nop
nop
nop
nop
cmp %r15, %r15

// Faulty Load
lea addresses_A+0x14047, %r12
nop
nop
nop
nop
nop
add %r15, %r15
movb (%r12), %r9b
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'52': 6}
52 52 52 52 52 52
*/
