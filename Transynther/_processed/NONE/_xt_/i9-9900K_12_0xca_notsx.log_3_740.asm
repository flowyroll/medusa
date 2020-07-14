.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x9e91, %r14
nop
nop
nop
nop
sub %rcx, %rcx
movb $0x61, (%r14)
nop
nop
inc %rcx
lea addresses_A_ht+0x1db95, %r13
nop
xor $20129, %r9
movups (%r13), %xmm4
vpextrq $1, %xmm4, %r8
nop
and $54391, %r9
lea addresses_D_ht+0x1b5d1, %rsi
lea addresses_A_ht+0xba51, %rdi
clflush (%rsi)
and $48989, %r8
mov $81, %rcx
rep movsl
nop
nop
nop
xor %r13, %r13
lea addresses_WT_ht+0x16f51, %rsi
lea addresses_WC_ht+0x9d51, %rdi
nop
nop
nop
nop
cmp $38225, %r13
mov $109, %rcx
rep movsw
nop
nop
add $31443, %r14
lea addresses_normal_ht+0x15971, %rdi
clflush (%rdi)
nop
nop
xor $29863, %rbx
movw $0x6162, (%rdi)
nop
nop
nop
and %r13, %r13
lea addresses_WT_ht+0x3851, %r14
nop
nop
nop
and $54972, %rcx
mov (%r14), %edi
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x16bb9, %rbx
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movups (%rbx), %xmm1
vpextrq $0, %xmm1, %r9
nop
nop
and $782, %r8
lea addresses_WC_ht+0xeb51, %rsi
lea addresses_normal_ht+0x1cf51, %rdi
add $63433, %r14
mov $29, %rcx
rep movsq
nop
nop
sub %r9, %r9
lea addresses_normal_ht+0xf351, %rsi
lea addresses_UC_ht+0x11751, %rdi
nop
nop
nop
nop
dec %r8
mov $101, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x351, %rsi
lea addresses_A_ht+0x1c3f9, %rdi
xor $58031, %r8
mov $28, %rcx
rep movsb
nop
nop
sub $46184, %rbx
lea addresses_A_ht+0xb751, %rsi
nop
nop
nop
nop
add %rcx, %rcx
movl $0x61626364, (%rsi)
mfence
lea addresses_A_ht+0xd711, %rsi
lea addresses_WT_ht+0x8831, %rdi
nop
nop
nop
cmp %r8, %r8
mov $96, %rcx
rep movsb
nop
and $62122, %r8
lea addresses_WT_ht+0xdf51, %r8
and $54056, %rcx
movb (%r8), %r9b
nop
nop
cmp $42206, %rdi
lea addresses_WT_ht+0x5951, %r13
nop
dec %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%r13)
nop
mfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi

// Store
lea addresses_A+0x1b6a5, %r9
nop
add $57776, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, (%r9)
nop
dec %rbp

// Store
lea addresses_normal+0x145f1, %rdi
nop
nop
xor $26763, %r9
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovups %ymm6, (%rdi)
nop
nop
and %r9, %r9

// Store
lea addresses_PSE+0xb4b1, %r9
clflush (%r9)
nop
nop
nop
nop
dec %rbx
movb $0x51, (%r9)
sub %rdi, %rdi

// Store
lea addresses_A+0xd28a, %rdi
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
movntdq %xmm6, (%rdi)
nop
nop
add %rbp, %rbp

// Store
mov $0x33eb030000000ac1, %rdi
nop
nop
nop
nop
nop
and $20318, %rcx
movl $0x51525354, (%rdi)
nop
nop
nop
nop
xor %rbp, %rbp

// Store
mov $0xabd, %rax
nop
and %rbp, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%rax)
nop
nop
nop
nop
nop
add %r14, %r14

// Store
lea addresses_PSE+0x1d471, %rdi
nop
add $10384, %r9
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movaps %xmm3, (%rdi)
nop
nop
nop
nop
cmp %rax, %rax

// Faulty Load
lea addresses_PSE+0x19751, %rdi
nop
nop
xor %rbp, %rbp
mov (%rdi), %r9d
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'33': 3}
33 33 33
*/
