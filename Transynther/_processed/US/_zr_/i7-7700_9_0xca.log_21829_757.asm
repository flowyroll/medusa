.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1bd4f, %r10
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%r10)
nop
dec %rbp
lea addresses_A_ht+0x13ccc, %rsi
lea addresses_WT_ht+0x68cc, %rdi
nop
nop
cmp %rbx, %rbx
mov $110, %rcx
rep movsq
nop
xor %r10, %r10
lea addresses_WC_ht+0x3dfc, %rcx
nop
nop
nop
nop
cmp $54700, %r9
movb $0x61, (%rcx)
nop
nop
nop
nop
cmp $406, %rdi
lea addresses_normal_ht+0x2994, %r9
clflush (%r9)
nop
nop
dec %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
and $0xffffffffffffffc0, %r9
movaps %xmm6, (%r9)
dec %rbx
lea addresses_normal_ht+0x15504, %r9
nop
and %r10, %r10
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%r9)
nop
nop
nop
nop
sub $40309, %r9
lea addresses_WT_ht+0x28c, %rsi
lea addresses_D_ht+0x16e92, %rdi
nop
nop
nop
and %rax, %rax
mov $65, %rcx
rep movsq
nop
nop
nop
nop
sub $4845, %rsi
lea addresses_normal_ht+0x1b90c, %rcx
clflush (%rcx)
nop
sub $46669, %r9
movl $0x61626364, (%rcx)
nop
add %r10, %r10
lea addresses_WT_ht+0x16c0c, %rbp
nop
inc %rax
movb (%rbp), %bl
nop
nop
sub $7139, %rbp
lea addresses_UC_ht+0xb63c, %rsi
lea addresses_UC_ht+0x11660, %rdi
nop
nop
nop
nop
nop
cmp $1942, %rbp
mov $77, %rcx
rep movsq
nop
nop
xor $524, %rdi
lea addresses_normal_ht+0x1b40c, %rdi
nop
nop
nop
nop
nop
cmp %rbp, %rbp
movb $0x61, (%rdi)
nop
nop
nop
dec %rax
lea addresses_A_ht+0x12c0c, %rsi
lea addresses_WC_ht+0x1106c, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $73, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0xb40c, %rsi
nop
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%rsi)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rax
push %rbp
push %rcx

// Faulty Load
lea addresses_US+0x1a40c, %r12
nop
nop
nop
and %r11, %r11
mov (%r12), %ebp
lea oracles, %r14
and $0xff, %rbp
shlq $12, %rbp
mov (%r14,%rbp,1), %rbp
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 6, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': True, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 8, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
