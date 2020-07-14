.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x102ed, %r10
clflush (%r10)
nop
nop
sub %rsi, %rsi
movb $0x61, (%r10)
nop
nop
nop
nop
nop
xor $55888, %rsi
lea addresses_UC_ht+0x1822e, %rsi
nop
nop
nop
nop
xor $40313, %rdx
movb (%rsi), %r13b
sub $64331, %rdx
lea addresses_A_ht+0x163ed, %rsi
lea addresses_WT_ht+0x736d, %rdi
nop
nop
nop
nop
cmp $37320, %rbp
mov $85, %rcx
rep movsw
nop
nop
dec %rcx
lea addresses_A_ht+0x152ed, %rbp
nop
nop
nop
and $48545, %rcx
mov $0x6162636465666768, %r11
movq %r11, (%rbp)
nop
sub %rcx, %rcx
lea addresses_normal_ht+0xdfad, %r10
inc %rcx
movw $0x6162, (%r10)
nop
nop
and $62517, %rdx
lea addresses_D_ht+0x19e7d, %rsi
lea addresses_D_ht+0x18bfc, %rdi
nop
nop
nop
nop
nop
dec %r11
mov $86, %rcx
rep movsb
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_UC_ht+0x6ced, %rsi
lea addresses_UC_ht+0x98ed, %rdi
nop
nop
nop
nop
cmp %rbp, %rbp
mov $104, %rcx
rep movsw
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x3eed, %rdx
and $1554, %rdi
mov (%rdx), %r11
nop
nop
nop
and %r11, %r11
lea addresses_normal_ht+0x194ed, %rdi
add $28800, %rdx
movb (%rdi), %r13b
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_WC_ht+0x5b32, %rdx
sub $31819, %rdi
movb (%rdx), %r11b
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0x62ed, %rbp
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm5
movups %xmm5, (%rbp)
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_UC_ht+0x9bed, %rsi
lea addresses_WC_ht+0x363d, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
add $45937, %rbp
mov $22, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdx

// Store
mov $0x2ed, %rcx
clflush (%rcx)
nop
nop
nop
nop
add $3338, %rax
mov $0x5152535455565758, %rbx
movq %rbx, (%rcx)
nop
nop
nop
sub $10063, %r14

// Store
lea addresses_RW+0x19eed, %rbp
clflush (%rbp)
nop
cmp $38082, %rdx
movb $0x51, (%rbp)
nop
nop
nop
nop
sub $2530, %r10

// Store
lea addresses_A+0xf7ff, %rbp
xor %rcx, %rcx
movl $0x51525354, (%rbp)
nop
sub %rcx, %rcx

// Store
mov $0x11d640000000027f, %rax
nop
nop
sub $48122, %rcx
movl $0x51525354, (%rax)
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_D+0x102ed, %r10
nop
xor $20576, %rax
mov $0x5152535455565758, %rbp
movq %rbp, (%r10)
nop
nop
nop
nop
nop
add %rcx, %rcx

// Store
mov $0xb2e, %r14
nop
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %r10
movq %r10, %xmm2
movups %xmm2, (%r14)

// Exception!!!
nop
nop
nop
nop
mov (0), %rbx
nop
nop
cmp %rax, %rax

// Store
lea addresses_PSE+0xd451, %r10
nop
nop
nop
nop
nop
add $64611, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r10)
nop
nop
nop
and $35244, %rbp

// Faulty Load
lea addresses_D+0x102ed, %r14
clflush (%r14)
nop
nop
nop
add %rdx, %rdx
mov (%r14), %eax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_PSE'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}}
{'58': 5977}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
