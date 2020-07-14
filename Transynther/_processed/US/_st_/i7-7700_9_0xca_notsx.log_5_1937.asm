.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x18ea, %r10
nop
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
and $0xffffffffffffffc0, %r10
movaps %xmm6, (%r10)
and $33688, %r11
lea addresses_D_ht+0x13f28, %rsi
lea addresses_A_ht+0xa6f8, %rdi
nop
nop
nop
nop
nop
sub %r13, %r13
mov $28, %rcx
rep movsl
nop
inc %rdi
lea addresses_WC_ht+0x1d7cc, %rbp
nop
nop
nop
nop
nop
dec %rsi
movw $0x6162, (%rbp)
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x1d28, %rdi
nop
nop
nop
xor $58578, %rcx
mov (%rdi), %r13d
dec %rcx
lea addresses_WC_ht+0x8828, %rsi
lea addresses_UC_ht+0x2228, %rdi
nop
xor %r15, %r15
mov $120, %rcx
rep movsw
nop
xor $3773, %r11
lea addresses_UC_ht+0xac28, %rcx
clflush (%rcx)
nop
dec %rbp
mov (%rcx), %r15
nop
nop
nop
nop
nop
inc %rbp
lea addresses_D_ht+0x1e828, %rsi
lea addresses_WC_ht+0x3e28, %rdi
nop
nop
nop
nop
nop
cmp $61280, %r15
mov $101, %rcx
rep movsw
nop
nop
nop
xor $15580, %rsi
lea addresses_D_ht+0x2ae8, %rsi
clflush (%rsi)
nop
nop
nop
nop
and %rcx, %rcx
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %r15
inc %r13
lea addresses_D_ht+0x1e968, %rsi
nop
nop
nop
nop
and $20468, %rcx
mov (%rsi), %r13w
nop
nop
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0xad28, %rsi
lea addresses_WT_ht+0x22a8, %rdi
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $88, %rcx
rep movsb
nop
nop
sub %r10, %r10
lea addresses_normal_ht+0xa3a8, %rsi
lea addresses_WT_ht+0xdde6, %rdi
add %r11, %r11
mov $47, %rcx
rep movsw
nop
nop
nop
nop
nop
and %r11, %r11
lea addresses_WT_ht+0x7aa8, %r15
nop
nop
nop
nop
cmp $24739, %r13
mov $0x6162636465666768, %r11
movq %r11, %xmm4
movups %xmm4, (%r15)
xor %rsi, %rsi
lea addresses_UC_ht+0x19a8, %rsi
lea addresses_WT_ht+0x1dae8, %rdi
sub %r15, %r15
mov $68, %rcx
rep movsw
nop
and %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi

// Store
lea addresses_normal+0x10428, %r14
nop
nop
nop
nop
nop
cmp $52503, %r15
movl $0x51525354, (%r14)
nop
cmp %r15, %r15

// Store
lea addresses_PSE+0xc028, %r8
clflush (%r8)
nop
nop
nop
nop
xor $62466, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
dec %rdi

// Store
lea addresses_D+0x1ba28, %rdi
nop
nop
nop
xor %r11, %r11
movw $0x5152, (%rdi)
nop
nop
nop
add %r8, %r8

// Faulty Load
lea addresses_US+0x15028, %r14
nop
nop
nop
nop
add %rdi, %rdi
mov (%r14), %r15
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'58': 5}
58 58 58 58 58
*/
