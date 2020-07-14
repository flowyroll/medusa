.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x4b22, %rsi
lea addresses_UC_ht+0x16e7, %rdi
nop
nop
cmp $40929, %r14
mov $124, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x1aa3a, %rdi
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
movups %xmm4, (%rdi)
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x17a2, %rsi
lea addresses_UC_ht+0x13122, %rdi
cmp %r12, %r12
mov $114, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $36965, %r12
lea addresses_WT_ht+0x21ea, %r12
nop
nop
nop
nop
sub %rbx, %rbx
movups (%r12), %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x1fc2, %rsi
lea addresses_WC_ht+0x1b22, %rdi
nop
nop
nop
nop
nop
and $16310, %rax
mov $72, %rcx
rep movsl
nop
nop
nop
nop
nop
add $15199, %rax
lea addresses_WT_ht+0x9622, %r14
and %rax, %rax
mov (%r14), %cx
nop
nop
sub %rax, %rax
lea addresses_WT_ht+0xcb62, %rbx
clflush (%rbx)
nop
nop
nop
nop
add $53409, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%rbx)
nop
nop
xor $36385, %rdi
lea addresses_UC_ht+0x1102, %rax
nop
nop
nop
xor $50232, %r12
vmovups (%rax), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
nop
nop
dec %rcx
lea addresses_WT_ht+0x18d22, %rsi
lea addresses_D_ht+0x702, %rdi
nop
nop
nop
sub %r14, %r14
mov $89, %rcx
rep movsw
nop
nop
nop
nop
xor $16551, %rcx
lea addresses_normal_ht+0xd1da, %rbx
cmp %r14, %r14
mov (%rbx), %rsi
nop
add %rax, %rax
lea addresses_WC_ht+0x3b22, %rcx
nop
xor $30426, %rbx
and $0xffffffffffffffc0, %rcx
vmovntdqa (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rax
nop
nop
xor %rbp, %rbp
lea addresses_normal_ht+0x14561, %r14
nop
nop
nop
and $33380, %rbp
mov (%r14), %rdi
nop
xor $59814, %rsi
lea addresses_A_ht+0x762e, %rsi
lea addresses_D_ht+0x1a922, %rdi
nop
nop
nop
nop
nop
add %r14, %r14
mov $60, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $24963, %rax
lea addresses_normal_ht+0xc2, %rsi
inc %rcx
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
cmp %rax, %rax
lea addresses_WT_ht+0xa722, %rsi
lea addresses_UC_ht+0x822, %rdi
and $18839, %rbx
mov $41, %rcx
rep movsw
and %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r8
push %rdx
push %rsi

// Store
lea addresses_D+0xbdb2, %r15
nop
nop
nop
nop
nop
dec %r8
movb $0x51, (%r15)
nop
nop
and $45806, %r11

// Store
lea addresses_A+0x3b22, %r13
nop
nop
nop
nop
nop
and $60598, %rdx
movw $0x5152, (%r13)
cmp $26681, %rsi

// Load
lea addresses_RW+0x1c694, %r10
nop
nop
nop
sub $30155, %rdx
movb (%r10), %r8b
nop
nop
nop
nop
sub %r10, %r10

// Store
lea addresses_normal+0x1f322, %rsi
nop
xor %r10, %r10
mov $0x5152535455565758, %r8
movq %r8, %xmm7
movups %xmm7, (%rsi)
nop
nop
nop
nop
nop
dec %r13

// Store
lea addresses_PSE+0x1c922, %rsi
clflush (%rsi)
nop
nop
nop
add $38763, %r11
movb $0x51, (%rsi)
cmp $48804, %rdx

// Faulty Load
lea addresses_A+0x3b22, %rdx
clflush (%rdx)
add $30984, %r15
mov (%rdx), %r13
lea oracles, %r10
and $0xff, %r13
shlq $12, %r13
mov (%r10,%r13,1), %r13
pop %rsi
pop %rdx
pop %r8
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'52': 21829}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
