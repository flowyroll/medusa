.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x13eec, %rsi
lea addresses_D_ht+0xd1ec, %rdi
nop
nop
nop
nop
and $3438, %r15
mov $12, %rcx
rep movsb
sub $64784, %rsi
lea addresses_D_ht+0x8eec, %rsi
lea addresses_WT_ht+0x116ec, %rdi
xor %rbp, %rbp
mov $96, %rcx
rep movsb
add %rbp, %rbp
lea addresses_UC_ht+0x14fb0, %rsi
lea addresses_WC_ht+0x736c, %rdi
nop
nop
nop
nop
nop
dec %r13
mov $54, %rcx
rep movsl
inc %r15
lea addresses_A_ht+0x140ec, %rsi
lea addresses_WC_ht+0x55ec, %rdi
dec %r13
mov $114, %rcx
rep movsw
nop
nop
cmp %r15, %r15
lea addresses_D_ht+0x19eb6, %r15
nop
dec %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%r15)
xor %rsi, %rsi
lea addresses_D_ht+0xf4c1, %rsi
clflush (%rsi)
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
nop
add $9202, %rbp
lea addresses_UC_ht+0x75d8, %rsi
lea addresses_D_ht+0x1226c, %rdi
nop
mfence
mov $94, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_US+0x1d6ec, %rdi
nop
nop
and %r13, %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movups %xmm4, (%rdi)
sub %rdi, %rdi

// Store
mov $0x39ccfa0000000b34, %rdi
nop
nop
cmp $4809, %rbx
movl $0x51525354, (%rdi)
nop
nop
nop
nop
cmp $53282, %r13

// Load
mov $0x1ec4790000000f64, %r12
nop
nop
nop
add $56186, %r13
movb (%r12), %r11b
cmp $13582, %rdi

// Store
lea addresses_UC+0x1baec, %rbx
nop
nop
nop
add %r11, %r11
movb $0x51, (%rbx)
cmp %rsi, %rsi

// Load
lea addresses_PSE+0xa4c6, %rbx
nop
nop
nop
nop
nop
cmp %r11, %r11
movb (%rbx), %r12b
nop
nop
nop
nop
nop
dec %r11

// Load
lea addresses_WC+0x1e3ee, %rbx
clflush (%rbx)
nop
nop
nop
nop
xor $12533, %rsi
vmovups (%rbx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
nop
nop
nop
and $12121, %rdx

// Load
mov $0x600, %r11
clflush (%r11)
nop
nop
and %r13, %r13
movb (%r11), %dl
nop
nop
nop
nop
inc %rdx

// Faulty Load
lea addresses_UC+0x1baec, %rbx
nop
nop
nop
nop
and %rdi, %rdi
vmovups (%rbx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r11
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'51': 2}
51 51
*/
