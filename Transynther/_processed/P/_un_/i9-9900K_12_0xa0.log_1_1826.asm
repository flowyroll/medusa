.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x16d05, %rsi
lea addresses_normal_ht+0x16d51, %rdi
nop
nop
sub $7040, %r15
mov $108, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r15
lea addresses_UC_ht+0x1c8c5, %r15
nop
nop
nop
nop
nop
and $11045, %r11
mov $0x6162636465666768, %rbx
movq %rbx, (%r15)
nop
nop
nop
xor %rbx, %rbx
lea addresses_D_ht+0xb705, %r11
nop
nop
nop
add $10958, %rcx
movw $0x6162, (%r11)
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_D_ht+0xc305, %r11
clflush (%r11)
nop
nop
nop
nop
xor %rbp, %rbp
movups (%r11), %xmm1
vpextrq $1, %xmm1, %rdi
nop
nop
add $44812, %rbp
lea addresses_WT_ht+0x3305, %rbx
nop
nop
nop
nop
dec %r11
mov $0x6162636465666768, %rbp
movq %rbp, (%rbx)
lfence
lea addresses_A_ht+0x15f05, %rsi
lea addresses_A_ht+0x5f9b, %rdi
clflush (%rsi)
nop
xor %r10, %r10
mov $64, %rcx
rep movsl
nop
nop
nop
and $14731, %rsi
lea addresses_normal_ht+0x19305, %rsi
lea addresses_UC_ht+0xcc85, %rdi
nop
nop
xor $49031, %r15
mov $15, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %rbp
lea addresses_normal_ht+0x16305, %rsi
lea addresses_UC_ht+0x8cc2, %rdi
nop
nop
nop
nop
nop
sub %r15, %r15
mov $60, %rcx
rep movsw
nop
nop
dec %r10
lea addresses_UC_ht+0xff05, %r11
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, (%r11)
nop
nop
nop
nop
nop
xor $23886, %rdi
lea addresses_A_ht+0x13405, %r11
nop
nop
nop
nop
nop
xor $5332, %rbp
movl $0x61626364, (%r11)
nop
nop
nop
nop
and $44456, %r15
lea addresses_WT_ht+0xf05, %rbp
nop
xor $29210, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%rbp)
nop
nop
nop
cmp $28194, %rbx
lea addresses_normal_ht+0x175d5, %rbp
nop
nop
nop
nop
nop
dec %rcx
mov (%rbp), %r11
xor %rbx, %rbx
lea addresses_A_ht+0x15265, %r15
nop
nop
nop
nop
nop
xor $23781, %rsi
movups (%r15), %xmm5
vpextrq $0, %xmm5, %rbx
cmp $16082, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x79d9d00000000677, %rsi
nop
nop
nop
xor $55648, %r9
movw $0x5152, (%rsi)
nop
nop
nop
xor $48176, %r9

// Store
lea addresses_US+0xe18b, %rax
nop
nop
inc %r11
movl $0x51525354, (%rax)

// Exception!!!
nop
xor %r13, %r13
div %r13
nop
nop
nop
dec %r9

// Load
lea addresses_WC+0x14eb4, %rdx
nop
nop
mfence
mov (%rdx), %esi
sub $35226, %r13

// REPMOV
mov $0x5e5, %rsi
mov $0xc85, %rdi
clflush (%rsi)
dec %r13
mov $72, %rcx
rep movsb
inc %rcx

// REPMOV
lea addresses_US+0x12305, %rsi
mov $0x3907b80000000325, %rdi
nop
nop
nop
nop
add %rdx, %rdx
mov $116, %rcx
rep movsl
nop
dec %r9

// Store
lea addresses_UC+0x9951, %rdi
nop
and %rdx, %rdx
movw $0x5152, (%rdi)
sub %rcx, %rcx

// REPMOV
mov $0xb05, %rsi
lea addresses_PSE+0x10b05, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %rax, %rax
mov $9, %rcx
rep movsw
nop
sub %rsi, %rsi

// REPMOV
lea addresses_normal+0x149b5, %rsi
lea addresses_PSE+0x193e5, %rdi
nop
nop
xor $50688, %rax
mov $106, %rcx
rep movsq
nop
nop
nop
nop
cmp %r11, %r11

// Load
lea addresses_RW+0x17505, %rdx
nop
nop
nop
inc %rdi
movb (%rdx), %r9b
nop
nop
nop
nop
and $36106, %rdi

// Store
lea addresses_normal+0xbb11, %rdx
nop
nop
nop
add $49935, %rdi
movw $0x5152, (%rdx)
nop
inc %r11

// Store
lea addresses_PSE+0x1e3ce, %r13
cmp $15283, %rax
mov $0x5152535455565758, %rdx
movq %rdx, (%r13)
cmp $31222, %r11

// Store
lea addresses_WT+0xa005, %r13
add %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r13)
nop
nop
nop
nop
xor %rcx, %rcx

// Faulty Load
mov $0xb05, %r13
nop
add %rcx, %rcx
mov (%r13), %r11w
lea oracles, %rdx
and $0xff, %r11
shlq $12, %r11
mov (%rdx,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_P'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_P'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_US'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}}
{'src': {'same': True, 'congruent': 0, 'type': 'addresses_P'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_PSE'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_PSE'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal', 'AVXalign': True, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'e3': 1}
e3
*/
