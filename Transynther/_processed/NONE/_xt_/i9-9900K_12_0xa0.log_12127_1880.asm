.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x4809, %r8
clflush (%r8)
nop
nop
nop
sub $30952, %rbx
mov $0x6162636465666768, %r13
movq %r13, (%r8)
nop
nop
nop
nop
nop
inc %r11
lea addresses_D_ht+0x13e79, %rcx
nop
nop
nop
sub $23635, %r13
movb $0x61, (%rcx)
nop
add $12456, %r8
lea addresses_normal_ht+0xae89, %rcx
nop
nop
nop
sub $54935, %rbp
movb (%rcx), %r8b
nop
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0x14689, %rbx
inc %r8
movl $0x61626364, (%rbx)
nop
nop
nop
nop
and $11613, %r8
lea addresses_UC_ht+0x1be89, %rbp
nop
nop
nop
nop
add $36715, %rbx
movb $0x61, (%rbp)
and $9267, %rbp
lea addresses_D_ht+0xf289, %r11
cmp %r8, %r8
mov (%r11), %bx
nop
nop
nop
nop
sub $15474, %rcx
lea addresses_A_ht+0x175af, %rsi
lea addresses_WT_ht+0x8261, %rdi
nop
nop
cmp $20148, %rax
mov $86, %rcx
rep movsw
nop
nop
xor $4761, %rax
lea addresses_D_ht+0xb865, %rsi
lea addresses_D_ht+0x339f, %rdi
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $53, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $6963, %rdi
lea addresses_A_ht+0xf89, %rax
clflush (%rax)
nop
nop
nop
nop
nop
sub $45742, %rdi
movl $0x61626364, (%rax)
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_UC_ht+0x1a9f9, %r8
clflush (%r8)
nop
nop
add $53280, %rbx
mov $0x6162636465666768, %r11
movq %r11, %xmm2
and $0xffffffffffffffc0, %r8
movntdq %xmm2, (%r8)
nop
nop
nop
sub $14605, %rcx
lea addresses_D_ht+0x4a9, %rbx
clflush (%rbx)
nop
nop
nop
nop
cmp %rcx, %rcx
movb (%rbx), %al
and $2619, %rdi
lea addresses_normal_ht+0x11289, %rsi
lea addresses_A_ht+0x17e89, %rdi
add $18565, %rbp
mov $44, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x1e609, %rcx
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
nop
nop
dec %rcx
lea addresses_D_ht+0x9861, %rsi
lea addresses_D_ht+0x1c489, %rdi
nop
nop
nop
inc %r11
mov $3, %rcx
rep movsw
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x3689, %rsi
lea addresses_UC_ht+0x1689, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %rax, %rax
mov $63, %rcx
rep movsl
nop
nop
nop
nop
nop
and $24266, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rax
push %rbx
push %rdi
push %rdx

// Load
lea addresses_normal+0x1ae89, %rdi
nop
add %rbx, %rbx
movb (%rdi), %r9b
nop
nop
nop
add %rbx, %rbx

// Load
lea addresses_WT+0x11f9, %r13
nop
nop
nop
nop
inc %rbx
movb (%r13), %r9b
nop
nop
nop
nop
add $13630, %r12

// Store
lea addresses_A+0x1c889, %rdi
nop
nop
xor %rdx, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm1
movups %xmm1, (%rdi)
nop
nop
nop
nop
nop
dec %rax

// Store
lea addresses_RW+0xd436, %rax
nop
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %r9
movq %r9, (%rax)
add $25035, %rdi

// Store
mov $0xacf, %rdx
inc %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%rdx)
nop
nop
nop
nop
nop
add %r12, %r12

// Store
lea addresses_PSE+0x15289, %r9
and %r12, %r12
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovups %ymm3, (%r9)
nop
nop
nop
nop
dec %r12

// Store
mov $0xec28800000009be, %r12
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %rdx
movq %rdx, (%r12)
nop
nop
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_PSE+0x15089, %r13
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r13)
nop
nop
sub %r13, %r13

// Faulty Load
lea addresses_normal+0x1ae89, %r9
nop
cmp %r13, %r13
mov (%r9), %rdi
lea oracles, %r13
and $0xff, %rdi
shlq $12, %rdi
mov (%r13,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': True, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': True, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'34': 12127}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
