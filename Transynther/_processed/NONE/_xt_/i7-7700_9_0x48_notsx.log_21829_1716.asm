.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1e615, %r13
nop
nop
nop
nop
cmp $43759, %rdi
movups (%r13), %xmm0
vpextrq $0, %xmm0, %rax
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x18c61, %rcx
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
movups %xmm6, (%rcx)
add %rbx, %rbx
lea addresses_D_ht+0xdd95, %r10
nop
nop
nop
and $22787, %rbp
mov (%r10), %bx
nop
nop
nop
xor $5967, %rbp
lea addresses_WT_ht+0xa395, %rax
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %rbp
movq %rbp, (%rax)
nop
nop
nop
and $5573, %r10
lea addresses_WT_ht+0x1d995, %r10
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
movups %xmm0, (%r10)
nop
nop
xor $15263, %rdi
lea addresses_A_ht+0xc0f2, %rax
nop
nop
nop
xor $36918, %r13
movb $0x61, (%rax)
nop
nop
nop
nop
nop
xor $59594, %rax
lea addresses_D_ht+0x14195, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
and %rdi, %rdi
movl $0x61626364, (%rbx)
nop
nop
nop
nop
add %r10, %r10
lea addresses_UC_ht+0x5295, %r13
nop
nop
nop
add $47587, %rdi
movw $0x6162, (%r13)
nop
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x16b85, %rsi
lea addresses_WC_ht+0x11595, %rdi
nop
nop
nop
inc %rax
mov $36, %rcx
rep movsw
nop
sub %rbp, %rbp
lea addresses_D_ht+0x14fb5, %rbp
clflush (%rbp)
nop
nop
nop
cmp $9112, %rax
movw $0x6162, (%rbp)
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_A_ht+0xfb95, %rsi
lea addresses_UC_ht+0x4d95, %rdi
nop
nop
nop
and %r10, %r10
mov $127, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_WC_ht+0x1dbb7, %rbp
nop
nop
nop
nop
sub $44743, %rbx
mov (%rbp), %edi
nop
nop
nop
nop
xor $33632, %rcx
lea addresses_D_ht+0x187f5, %rbx
nop
and $15681, %rbp
movl $0x61626364, (%rbx)
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x2b55, %rsi
nop
sub %r10, %r10
mov (%rsi), %rbp
nop
nop
nop
dec %rbp
lea addresses_D_ht+0xf095, %rsi
lea addresses_UC_ht+0x13d15, %rdi
and %rbx, %rbx
mov $23, %rcx
rep movsb
nop
nop
nop
xor %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_D+0x3d15, %rbx
nop
nop
and $2543, %r8
movl $0x51525354, (%rbx)
nop
nop
nop
nop
xor $55311, %r8

// Store
lea addresses_A+0xdef9, %r8
nop
nop
nop
sub $12595, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
movups %xmm0, (%r8)
nop
nop
and $44193, %r13

// Faulty Load
lea addresses_UC+0x18995, %r13
nop
nop
sub %rcx, %rcx
movups (%r13), %xmm4
vpextrq $1, %xmm4, %r15
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 2}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 10}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'37': 21829}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
