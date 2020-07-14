.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xc480, %r15
nop
nop
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %r14
movq %r14, %xmm1
vmovups %ymm1, (%r15)
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x1b9c0, %r11
nop
and $38406, %rbx
mov (%r11), %dx
nop
sub %rbx, %rbx
lea addresses_normal_ht+0x480, %r14
nop
nop
sub %r9, %r9
mov (%r14), %edx
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_D_ht+0x9840, %rdx
nop
nop
nop
and %r15, %r15
mov (%rdx), %r11w
nop
dec %r11
lea addresses_D_ht+0x143b0, %r11
nop
nop
nop
add $37648, %r14
mov (%r11), %cx
nop
nop
nop
nop
nop
and %r11, %r11
lea addresses_A_ht+0x11a5a, %r9
clflush (%r9)
nop
nop
nop
cmp $13655, %r11
movl $0x61626364, (%r9)
nop
nop
nop
nop
cmp $65143, %r9
lea addresses_normal_ht+0x8e00, %rsi
lea addresses_A_ht+0x9e80, %rdi
nop
nop
nop
nop
nop
xor %r15, %r15
mov $54, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x31c0, %r14
inc %rbx
mov $0x6162636465666768, %r15
movq %r15, %xmm4
movups %xmm4, (%r14)
nop
nop
nop
nop
nop
inc %rdi
lea addresses_D_ht+0x1cd80, %rsi
lea addresses_D_ht+0x15368, %rdi
nop
nop
nop
nop
nop
dec %r11
mov $6, %rcx
rep movsq
nop
cmp $6661, %rdx
lea addresses_normal_ht+0x69f0, %rsi
lea addresses_D_ht+0x6548, %rdi
nop
nop
nop
xor %r14, %r14
mov $15, %rcx
rep movsb
nop
nop
xor $28898, %r11
lea addresses_UC_ht+0x165a0, %r14
nop
nop
nop
nop
xor $30866, %rdi
movl $0x61626364, (%r14)
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x19788, %rsi
lea addresses_D_ht+0x1e780, %rdi
nop
nop
nop
and %rdx, %rdx
mov $100, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $41536, %r11
lea addresses_WT_ht+0xac80, %r9
clflush (%r9)
nop
nop
nop
nop
lfence
movups (%r9), %xmm6
vpextrq $0, %xmm6, %r14
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0xadf0, %r14
nop
nop
nop
sub %rdx, %rdx
movups (%r14), %xmm1
vpextrq $1, %xmm1, %r11
nop
nop
nop
and $35640, %rcx
lea addresses_normal_ht+0x1a080, %rbx
nop
nop
nop
nop
sub %rcx, %rcx
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
sub %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rdi

// Load
mov $0x7a0, %rbp
nop
nop
nop
nop
cmp $37393, %rdi
mov (%rbp), %r13d
nop
and $46831, %rbp

// Store
lea addresses_WC+0x1f468, %r10
nop
and %r13, %r13
movw $0x5152, (%r10)
nop
nop
xor $36811, %rcx

// Store
mov $0x3ac8840000000c00, %r10
nop
inc %r8
movl $0x51525354, (%r10)
nop
sub %r13, %r13

// Store
lea addresses_PSE+0x5a68, %rcx
nop
nop
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %r8
movq %r8, (%rcx)
nop
nop
nop
and $30526, %rbp

// Store
lea addresses_US+0x8080, %r10
clflush (%r10)
cmp %r14, %r14
movb $0x51, (%r10)
nop
and %r8, %r8

// Store
lea addresses_UC+0x1d264, %r14
nop
nop
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r14)
nop
nop
nop
nop
and $61796, %rbp

// Store
lea addresses_US+0x8080, %rdi
nop
nop
nop
cmp $7788, %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
movups %xmm2, (%rdi)
nop
add $50303, %rbp

// Store
lea addresses_US+0x9cd4, %r13
nop
xor $17454, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
movups %xmm4, (%r13)
nop
nop
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_US+0x132c0, %r8
sub %rbp, %rbp
movl $0x51525354, (%r8)
nop
nop
nop
add $51097, %r8

// Faulty Load
lea addresses_US+0x8080, %rbp
nop
sub %r13, %r13
mov (%rbp), %cx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'00': 57, '58': 21772}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58
*/
