.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x5b13, %rsi
lea addresses_D_ht+0x9ec5, %rdi
clflush (%rdi)
nop
nop
nop
and %r12, %r12
mov $40, %rcx
rep movsq
nop
nop
nop
dec %rax
lea addresses_normal_ht+0x911f, %rax
nop
nop
nop
nop
nop
sub $12936, %rbx
mov $0x6162636465666768, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rax)
nop
inc %r12
lea addresses_WC_ht+0x194cd, %rsi
lea addresses_normal_ht+0x10913, %rdi
nop
nop
nop
nop
cmp $22234, %r15
mov $55, %rcx
rep movsl
nop
and %r12, %r12
lea addresses_D_ht+0x5613, %rdi
nop
nop
nop
add $28704, %rbx
movb (%rdi), %cl
xor $45286, %r12
lea addresses_D_ht+0x1e313, %rcx
nop
nop
nop
nop
dec %r12
mov (%rcx), %ax
nop
nop
nop
and $47361, %r15
lea addresses_UC_ht+0xc913, %rbx
nop
and $23150, %r12
movl $0x61626364, (%rbx)
nop
sub $1945, %r12
lea addresses_D_ht+0x9513, %rbx
nop
nop
nop
nop
sub $61320, %r15
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%rbx)
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x17513, %rsi
lea addresses_normal_ht+0x15913, %rdi
clflush (%rdi)
nop
nop
nop
and $47326, %r15
mov $125, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_WC_ht+0x1c113, %rcx
nop
add $34336, %r15
mov (%rcx), %esi
nop
nop
and $35519, %rsi
lea addresses_WT_ht+0x5f13, %r12
nop
nop
nop
nop
add %rbx, %rbx
and $0xffffffffffffffc0, %r12
movaps (%r12), %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x15113, %rsi
lea addresses_D_ht+0x1cb13, %rdi
nop
nop
nop
sub $65375, %r10
mov $79, %rcx
rep movsl
nop
nop
nop
dec %rax
lea addresses_WC_ht+0x17593, %rax
mfence
movb (%rax), %r10b
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x5953, %rcx
and $17723, %rdi
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_WC+0x17913, %rsi
nop
nop
nop
add $16344, %r8
mov $0x5152535455565758, %r12
movq %r12, (%rsi)
nop
nop
nop
nop
nop
sub $51437, %r9

// Load
lea addresses_A+0x12483, %rdx
nop
nop
add %r12, %r12
mov (%rdx), %edi
nop
nop
dec %rsi

// REPMOV
lea addresses_WC+0x16213, %rsi
lea addresses_A+0x1bd53, %rdi
inc %r13
mov $103, %rcx
rep movsw

// Exception!!!
nop
nop
nop
nop
mov (0), %r13
xor $37765, %rdx

// Store
lea addresses_UC+0x18d7b, %r13
nop
xor $51798, %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm7
vmovups %ymm7, (%r13)
nop
nop
nop
add $14628, %rdx

// Store
mov $0x6e05cb000000082d, %rdx
clflush (%rdx)
dec %r8
movw $0x5152, (%rdx)
nop
nop
add %r8, %r8

// Store
lea addresses_PSE+0x19653, %r9
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
vmovaps %ymm7, (%r9)
nop
nop
nop
nop
nop
cmp $17443, %rcx

// Store
mov $0x432f0000000d53, %rdi
clflush (%rdi)
nop
xor %rdx, %rdx
movb $0x51, (%rdi)
sub $58933, %rdi

// Store
lea addresses_PSE+0x195e3, %r13
clflush (%r13)
nop
nop
nop
cmp $18955, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, (%r13)
nop
nop
nop
nop
nop
inc %rdi

// Load
lea addresses_A+0x13b13, %rdx
add %rcx, %rcx
mov (%rdx), %r13d
nop
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_D+0x10913, %rcx
nop
nop
nop
nop
dec %r8
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_A+0x1c113, %r8
nop
nop
nop
nop
nop
and %r12, %r12
movb $0x51, (%r8)
dec %rcx

// Faulty Load
lea addresses_A+0x1c113, %r9
xor $10480, %rdi
movb (%r9), %r12b
lea oracles, %r13
and $0xff, %r12
shlq $12, %r12
mov (%r13,%r12,1), %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 32, 'type': 'addresses_PSE', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'51': 20113}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
