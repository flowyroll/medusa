.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x13666, %rsi
lea addresses_WT_ht+0x19406, %rdi
nop
nop
nop
nop
nop
dec %rbx
mov $79, %rcx
rep movsw
nop
nop
nop
nop
sub %rax, %rax
lea addresses_WC_ht+0x17ede, %rbx
nop
nop
nop
nop
nop
add $25163, %r14
mov (%rbx), %rax
cmp %r14, %r14
lea addresses_WC_ht+0x8946, %r14
and $49814, %r11
mov (%r14), %cx
nop
nop
and $8794, %rax
lea addresses_UC_ht+0x666, %rsi
lea addresses_A_ht+0x14b66, %rdi
nop
nop
nop
nop
nop
sub %r10, %r10
mov $118, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x19686, %rcx
nop
nop
xor $32165, %r11
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %rbp
push %rbx
push %rcx

// Store
lea addresses_D+0x3cc6, %r14
clflush (%r14)
nop
nop
cmp %r10, %r10
movw $0x5152, (%r14)
nop
cmp %r10, %r10

// Store
lea addresses_D+0x12d66, %rcx
nop
nop
inc %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%rcx)
nop
nop
nop
nop
nop
dec %r8

// Store
mov $0xea6, %rbx
nop
nop
nop
nop
and %rbp, %rbp
movl $0x51525354, (%rbx)
nop
nop
and $16212, %rcx

// Store
lea addresses_normal+0x5766, %rbp
nop
nop
and $41379, %r8
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovups %ymm2, (%rbp)
nop
nop
sub $55978, %rbx

// Store
lea addresses_RW+0x5166, %rbp
nop
nop
sub %r10, %r10
movl $0x51525354, (%rbp)
nop
nop
add $6285, %r10

// Faulty Load
mov $0x6eeae0000000b66, %r13
nop
nop
nop
cmp %r14, %r14
movups (%r13), %xmm1
vpextrq $1, %xmm1, %r10
lea oracles, %rcx
and $0xff, %r10
shlq $12, %r10
mov (%rcx,%r10,1), %r10
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'cc': 1, '46': 3581, '00': 18247}
00 00 00 00 00 46 00 00 00 00 46 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 46 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 46 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 46 00 00 00 46 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 46 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 46 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00
*/
