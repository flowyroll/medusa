.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x12789, %rbp
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm5
movups %xmm5, (%rbp)
nop
sub $44839, %r9
lea addresses_UC_ht+0x73cd, %rax
nop
nop
sub %r13, %r13
movb $0x61, (%rax)
nop
nop
nop
and $60497, %rax
lea addresses_normal_ht+0xef49, %rsi
lea addresses_D_ht+0x925b, %rdi
nop
nop
add %r13, %r13
mov $36, %rcx
rep movsq
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x6649, %rsi
lea addresses_WC_ht+0x19849, %rdi
xor %r9, %r9
mov $45, %rcx
rep movsw
nop
nop
nop
mfence
lea addresses_UC_ht+0x114c9, %rax
nop
nop
nop
add %rcx, %rcx
vmovups (%rax), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r9
sub $7842, %rcx
lea addresses_D_ht+0x11299, %rcx
and $39596, %rdi
movb $0x61, (%rcx)
nop
nop
sub $48065, %rcx
lea addresses_D_ht+0x14a49, %rdi
nop
nop
nop
add %rsi, %rsi
movb (%rdi), %r11b
and %r13, %r13
lea addresses_UC_ht+0x17c29, %rsi
nop
nop
cmp %rdi, %rdi
movw $0x6162, (%rsi)
nop
nop
and $1918, %rax
lea addresses_A_ht+0x16049, %rsi
lea addresses_WC_ht+0xe49, %rdi
xor $36719, %rbp
mov $54, %rcx
rep movsq
nop
nop
nop
nop
cmp $55666, %r9
lea addresses_D_ht+0x17e49, %rsi
lea addresses_UC_ht+0x17e69, %rdi
nop
nop
nop
xor %r9, %r9
mov $96, %rcx
rep movsb
nop
nop
sub %r11, %r11
lea addresses_UC_ht+0xe289, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov (%rdi), %eax
nop
nop
nop
add $60770, %r9
lea addresses_UC_ht+0x6b7b, %r13
inc %rbp
movb $0x61, (%r13)
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_A_ht+0x9049, %rsi
lea addresses_UC_ht+0x3ec5, %rdi
nop
nop
nop
nop
nop
xor $3122, %rax
mov $71, %rcx
rep movsq
nop
nop
nop
nop
xor %r13, %r13
lea addresses_D_ht+0x9049, %rcx
nop
nop
nop
cmp $60279, %r13
movb (%rcx), %r9b
cmp $59019, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_US+0x9869, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovups %ymm4, (%rdx)
add %r8, %r8

// Store
mov $0xe49, %rbx
cmp %r13, %r13
movl $0x51525354, (%rbx)
nop
nop
nop
nop
nop
cmp $1281, %rbx

// Store
mov $0x6bf2bb0000000d89, %rdx
nop
nop
nop
nop
xor %r8, %r8
movw $0x5152, (%rdx)
nop
nop
nop
sub %r8, %r8

// Load
lea addresses_normal+0x1d0c9, %rbx
nop
nop
sub $39302, %rsi
mov (%rbx), %r13
nop
nop
nop
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_RW+0x1d049, %r14
nop
nop
nop
nop
nop
sub $10242, %r13
movb (%r14), %dl
lea oracles, %r8
and $0xff, %rdx
shlq $12, %rdx
mov (%r8,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_NC'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 11, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
