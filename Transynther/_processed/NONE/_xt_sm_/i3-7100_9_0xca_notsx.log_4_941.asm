.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1c65e, %r8
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %rax
movq %rax, %xmm6
movups %xmm6, (%r8)
nop
nop
inc %r15
lea addresses_UC_ht+0x6c0e, %rbx
nop
nop
nop
nop
sub %r10, %r10
movb $0x61, (%rbx)
nop
nop
nop
and $55842, %r15
lea addresses_UC_ht+0xb01e, %r14
nop
nop
nop
sub %r10, %r10
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
add $13641, %r15
lea addresses_UC_ht+0x543e, %rax
nop
nop
and %rcx, %rcx
movb $0x61, (%rax)
nop
cmp $42918, %rax
lea addresses_WT_ht+0x1cc1e, %r8
cmp %r15, %r15
mov (%r8), %r10w
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_normal_ht+0xba22, %rsi
lea addresses_D_ht+0xa5e, %rdi
sub $25470, %r10
mov $126, %rcx
rep movsq
nop
add $41954, %rdi
lea addresses_A_ht+0x625e, %rdi
add $24246, %r15
mov (%rdi), %bx
nop
and $15070, %r14
lea addresses_UC_ht+0xd95e, %rdi
nop
nop
nop
nop
nop
cmp $40265, %rsi
movb $0x61, (%rdi)
nop
nop
sub $32520, %r15
lea addresses_WC_ht+0x625e, %r10
nop
nop
nop
nop
nop
and %rsi, %rsi
movb (%r10), %cl
nop
cmp %r14, %r14
lea addresses_A_ht+0x53de, %rcx
nop
nop
nop
xor $38214, %r8
mov $0x6162636465666768, %r10
movq %r10, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
add %rax, %rax
lea addresses_normal_ht+0x1247e, %r15
nop
nop
nop
nop
add $17696, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r15)
nop
nop
nop
nop
sub %r10, %r10
lea addresses_WT_ht+0x12a4a, %rsi
lea addresses_D_ht+0x1dafe, %rdi
cmp %r8, %r8
mov $50, %rcx
rep movsl
dec %rsi
lea addresses_A_ht+0xd70e, %r15
nop
nop
nop
nop
add $1056, %rcx
movw $0x6162, (%r15)
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0xa1b2, %rsi
lea addresses_UC_ht+0x5c5e, %rdi
nop
nop
cmp $8337, %r15
mov $50, %rcx
rep movsl
nop
nop
nop
nop
xor %r8, %r8
lea addresses_WC_ht+0x1619e, %rbx
nop
nop
sub %rcx, %rcx
movb (%rbx), %r14b
nop
nop
xor $59194, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rax
push %rbx
push %rdx
push %rsi

// Store
lea addresses_WC+0x1b355, %r9
nop
nop
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm7
vmovups %ymm7, (%r9)
nop
nop
xor %r15, %r15

// Store
lea addresses_A+0x10e5e, %rax
nop
nop
nop
nop
nop
xor %rdx, %rdx
movb $0x51, (%rax)
nop
cmp $24663, %rdx

// Store
lea addresses_WT+0x1cd9e, %r15
nop
nop
nop
dec %rdx
mov $0x5152535455565758, %rbx
movq %rbx, (%r15)
nop
nop
add $41815, %rax

// Store
lea addresses_A+0xfa5e, %rax
clflush (%rax)
nop
xor %r15, %r15
movb $0x51, (%rax)
nop
nop
nop
xor $37583, %rdx

// Load
lea addresses_PSE+0x6b42, %r10
nop
nop
sub $50311, %rax
mov (%r10), %edx
nop
nop
cmp $2182, %r15

// Store
mov $0x690c62000000005e, %rdx
clflush (%rdx)
nop
nop
nop
nop
add $12159, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm2
movaps %xmm2, (%rdx)
nop
nop
nop
nop
inc %rax

// Store
lea addresses_normal+0x1d29e, %r10
nop
nop
nop
nop
nop
add %rbx, %rbx
movw $0x5152, (%r10)
nop
xor $11339, %rdx

// Faulty Load
lea addresses_A+0xfa5e, %rax
nop
nop
nop
add $17552, %rsi
mov (%rax), %r9w
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'51': 4}
51 51 51 51
*/
