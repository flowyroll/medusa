.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1542d, %rsi
lea addresses_A_ht+0x91a9, %rdi
nop
nop
nop
cmp %r8, %r8
mov $70, %rcx
rep movsb
nop
nop
nop
nop
nop
add $33644, %r9
lea addresses_WC_ht+0xbfe9, %rsi
nop
nop
nop
inc %r9
mov (%rsi), %cx
nop
nop
add %r8, %r8
lea addresses_D_ht+0x3213, %rsi
lea addresses_WT_ht+0x831, %rdi
and $2372, %r8
mov $90, %rcx
rep movsq
nop
nop
nop
nop
sub $27227, %rdi
lea addresses_D_ht+0x5569, %r14
clflush (%r14)
nop
nop
nop
nop
nop
mfence
movl $0x61626364, (%r14)
xor $11429, %rsi
lea addresses_A_ht+0xc69, %rbp
xor $25701, %r8
movups (%rbp), %xmm3
vpextrq $1, %xmm3, %r14
cmp %rdi, %rdi
lea addresses_normal_ht+0x15769, %rbp
nop
nop
nop
nop
nop
and $7513, %rdi
movups (%rbp), %xmm7
vpextrq $0, %xmm7, %rcx
nop
nop
nop
nop
nop
add $57562, %rdi
lea addresses_WT_ht+0xfb7b, %rsi
nop
xor %rdi, %rdi
mov (%rsi), %cx
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0x1b769, %r9
nop
cmp %r14, %r14
movw $0x6162, (%r9)
nop
nop
nop
add $30768, %rdi
lea addresses_normal_ht+0xf769, %r9
nop
nop
nop
nop
dec %r8
mov (%r9), %edi
nop
and %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rdx

// Load
mov $0x569, %rax
clflush (%rax)
nop
nop
nop
add $27503, %rbp
mov (%rax), %ebx
nop
nop
nop
nop
nop
xor $38408, %rbx

// Store
lea addresses_RW+0x7789, %r11
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movups %xmm6, (%r11)
nop
sub $492, %r11

// Load
lea addresses_UC+0x224b, %rbx
clflush (%rbx)
xor %rdx, %rdx
mov (%rbx), %r9w
nop
nop
add %rdx, %rdx

// Store
lea addresses_RW+0x63e9, %rbp
nop
add %rax, %rax
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
sub $59746, %r15

// Store
lea addresses_UC+0x1bd69, %r9
nop
and %rbx, %rbx
movw $0x5152, (%r9)
nop
nop
xor %rdx, %rdx

// Store
lea addresses_A+0x8769, %rdx
nop
nop
nop
nop
xor %rbx, %rbx
movw $0x5152, (%rdx)
nop
nop
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_normal+0xf101, %r15
nop
nop
and $15689, %rbx
movb $0x51, (%r15)
nop
nop
nop
nop
nop
cmp $15518, %r9

// Faulty Load
lea addresses_A+0x8769, %rbx
and $55914, %rbp
mov (%rbx), %dx
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_P', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_RW', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'52': 378}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
