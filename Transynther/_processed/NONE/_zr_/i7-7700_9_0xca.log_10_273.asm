.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
lea addresses_WC_ht+0x5c5c, %rdi
nop
nop
inc %rdx
mov (%rdi), %r14w
xor %rdi, %rdi
lea addresses_WT_ht+0x1aa68, %r9
nop
and $17392, %rcx
movl $0x61626364, (%r9)
nop
nop
inc %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %rax
push %rcx
push %rsi

// Store
lea addresses_RW+0x13d5c, %r13
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm4
vmovups %ymm4, (%r13)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r13
nop
nop
cmp %rcx, %rcx

// Load
lea addresses_RW+0x1bd70, %r14
nop
nop
nop
sub %rax, %rax
mov (%r14), %r10w
nop
nop
nop
cmp %r10, %r10

// Store
lea addresses_D+0x3f5c, %rsi
nop
nop
nop
nop
and $10276, %r14
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
dec %r14

// Store
lea addresses_US+0x153dc, %r14
nop
nop
nop
nop
cmp $54897, %rcx
movb $0x51, (%r14)
nop
nop
nop
xor $12381, %r13

// Store
lea addresses_WC+0x1645c, %r14
nop
nop
cmp $55467, %r11
mov $0x5152535455565758, %r10
movq %r10, %xmm5
vmovups %ymm5, (%r14)
nop
nop
nop
xor %r10, %r10

// Load
mov $0x625d3d0000000e1c, %r14
nop
nop
and %rax, %rax
mov (%r14), %rcx
nop
sub $26018, %r11

// Faulty Load
lea addresses_WC+0x1c95c, %r11
nop
nop
sub $17382, %r14
mov (%r11), %esi
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
