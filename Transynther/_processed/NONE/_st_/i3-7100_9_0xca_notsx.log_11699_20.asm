.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1cabe, %rsi
lea addresses_A_ht+0x729e, %rdi
nop
cmp %r13, %r13
mov $126, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_D_ht+0xa4be, %r15
nop
xor %r9, %r9
movups (%r15), %xmm4
vpextrq $1, %xmm4, %r12
nop
nop
add $21587, %r15
lea addresses_UC_ht+0x6536, %rdi
nop
nop
nop
nop
dec %rsi
mov (%rdi), %cx
sub %r13, %r13
lea addresses_D_ht+0xac3e, %rsi
nop
inc %rdi
mov (%rsi), %cx
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x56be, %rcx
nop
nop
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %r15
movq %r15, %xmm1
movups %xmm1, (%rcx)
nop
add $38825, %r12
lea addresses_D_ht+0x173ec, %r12
nop
nop
nop
nop
inc %rcx
movb (%r12), %r15b
nop
inc %r15
lea addresses_A_ht+0x6bbe, %r13
nop
nop
nop
sub $42010, %rcx
and $0xffffffffffffffc0, %r13
movaps (%r13), %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x1c9ae, %rdi
nop
nop
sub $52279, %r13
movl $0x61626364, (%rdi)
nop
nop
nop
nop
cmp $61802, %rcx
lea addresses_normal_ht+0x16be, %rcx
nop
nop
cmp %r13, %r13
mov (%rcx), %esi
xor $65179, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_WC+0x553e, %rdx
nop
cmp $2871, %rbp
mov (%rdx), %eax
nop
xor %r8, %r8

// REPMOV
lea addresses_D+0x14abe, %rsi
lea addresses_normal+0x56be, %rdi
nop
nop
xor %r11, %r11
mov $18, %rcx
rep movsl
nop
nop
nop
and %rax, %rax

// Load
lea addresses_normal+0x56be, %rbp
nop
nop
nop
nop
cmp $64145, %r11
movb (%rbp), %r8b
nop
nop
nop
nop
lfence

// Store
lea addresses_A+0x275e, %rdi
nop
nop
nop
nop
nop
add %rbp, %rbp
movw $0x5152, (%rdi)
nop
cmp $48897, %rax

// Store
lea addresses_PSE+0x138be, %rcx
nop
inc %r11
movl $0x51525354, (%rcx)
nop
nop
xor %r8, %r8

// Store
lea addresses_US+0xbefe, %rcx
clflush (%rcx)
nop
nop
nop
nop
xor %rsi, %rsi
movw $0x5152, (%rcx)
cmp $49606, %rdx

// Load
mov $0x817b20000000a9e, %rbp
clflush (%rbp)
nop
nop
nop
add %r8, %r8
vmovaps (%rbp), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax
inc %rcx

// Faulty Load
lea addresses_normal+0x56be, %rcx
nop
nop
nop
nop
sub %rsi, %rsi
vmovups (%rcx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 0, 'same': True}}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': True}}
{'src': {'same': True, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'36': 11699}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
