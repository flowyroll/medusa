.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1bfac, %rsi
lea addresses_normal_ht+0x63e4, %rdi
nop
nop
cmp $10535, %rax
mov $10, %rcx
rep movsb
nop
nop
and $43832, %rax
lea addresses_WC_ht+0x1d0, %r10
nop
add %rsi, %rsi
movups (%r10), %xmm7
vpextrq $0, %xmm7, %rdi
add $23496, %rcx
lea addresses_A_ht+0x1656c, %r10
nop
nop
nop
nop
and %r12, %r12
mov $0x6162636465666768, %rsi
movq %rsi, (%r10)
cmp $47067, %rdi
lea addresses_WC_ht+0x57c8, %rsi
lea addresses_D_ht+0x73fe, %rdi
nop
nop
nop
mfence
mov $10, %rcx
rep movsw
nop
nop
lfence
lea addresses_normal_ht+0x9fac, %rax
add $43111, %rsi
movb (%rax), %r10b
nop
add %rdi, %rdi
lea addresses_normal_ht+0x6cfa, %r12
nop
nop
nop
nop
nop
inc %rcx
movl $0x61626364, (%r12)
nop
nop
nop
nop
sub $38512, %rdi
lea addresses_normal_ht+0xe38c, %rsi
lea addresses_D_ht+0xf6ac, %rdi
nop
nop
nop
nop
nop
xor $37269, %r11
mov $57, %rcx
rep movsb
nop
add %rbp, %rbp
lea addresses_D_ht+0x6ec6, %rsi
lea addresses_D_ht+0xdb6c, %rdi
clflush (%rdi)
nop
nop
cmp %r11, %r11
mov $110, %rcx
rep movsq
nop
nop
nop
cmp $45026, %rcx
lea addresses_WT_ht+0x9c94, %rsi
lea addresses_UC_ht+0x31a8, %rdi
nop
nop
nop
nop
nop
and %r12, %r12
mov $89, %rcx
rep movsw
nop
nop
sub $5259, %r10
lea addresses_WC_ht+0x1b6ac, %r10
nop
nop
cmp $19986, %rax
movw $0x6162, (%r10)
nop
nop
nop
nop
nop
and $36354, %rax
lea addresses_WT_ht+0x366c, %rsi
lea addresses_WT_ht+0x17cac, %rdi
nop
nop
nop
cmp $52567, %r12
mov $10, %rcx
rep movsw
nop
add $43793, %rbp
lea addresses_UC_ht+0xb2ac, %rcx
nop
nop
add $7649, %r10
mov (%rcx), %r11w
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x15c, %rsi
lea addresses_WT_ht+0xf9b2, %rdi
nop
nop
nop
nop
nop
dec %rax
mov $106, %rcx
rep movsl
nop
nop
cmp $46010, %rdi
lea addresses_UC_ht+0x138ec, %rdi
nop
nop
nop
add $26153, %r10
mov $0x6162636465666768, %r12
movq %r12, %xmm7
and $0xffffffffffffffc0, %rdi
vmovaps %ymm7, (%rdi)
nop
add $3722, %rdi
lea addresses_WT_ht+0xae75, %rsi
lea addresses_A_ht+0x1eeac, %rdi
clflush (%rdi)
nop
nop
cmp $30531, %r12
mov $68, %rcx
rep movsw
add $57213, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rax
push %rbx
push %rdx
push %rsi

// Store
lea addresses_WT+0xcc38, %r12
nop
dec %rax
movb $0x51, (%r12)
nop
nop
nop
nop
cmp %rdx, %rdx

// Load
lea addresses_D+0x120ac, %rbx
clflush (%rbx)
nop
xor %r8, %r8
movb (%rbx), %dl

// Exception!!!
nop
mov (0), %rbx
inc %rbx

// Store
mov $0xf84, %r13
nop
nop
and $41837, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, (%r13)
nop
inc %r8

// Store
mov $0x3810f10000000b2c, %rdx
nop
nop
nop
nop
sub $36869, %r12
mov $0x5152535455565758, %rbx
movq %rbx, (%rdx)
nop
nop
nop
nop
nop
inc %rsi

// Faulty Load
lea addresses_RW+0x17eac, %r8
nop
dec %rax
mov (%r8), %rbx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 6, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
