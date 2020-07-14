.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xc0ab, %rsi
lea addresses_WT_ht+0x40ab, %rdi
nop
nop
nop
inc %r13
mov $82, %rcx
rep movsq
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x17e6b, %r14
nop
nop
nop
nop
xor %r10, %r10
mov (%r14), %rbp
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x78ab, %rbp
add $43417, %rcx
mov (%rbp), %rdi
cmp $39137, %r10
lea addresses_WC_ht+0xd64b, %rsi
lea addresses_normal_ht+0x1d8ab, %rdi
nop
xor %r11, %r11
mov $5, %rcx
rep movsq
nop
nop
nop
dec %r14
lea addresses_UC_ht+0xa1ab, %rsi
lea addresses_A_ht+0x1c92b, %rdi
clflush (%rsi)
add $44296, %r14
mov $31, %rcx
rep movsb
nop
nop
nop
nop
nop
and $41304, %r14
lea addresses_D_ht+0x168fb, %rsi
lea addresses_WT_ht+0x4e2b, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $96, %rcx
rep movsl
sub $44691, %r13
lea addresses_WT_ht+0x1dfab, %rsi
lea addresses_normal_ht+0x1c20c, %rdi
nop
nop
nop
cmp $55024, %r14
mov $103, %rcx
rep movsw
add $54812, %rbp
lea addresses_WC_ht+0x14cab, %rsi
lea addresses_D_ht+0xf1db, %rdi
nop
nop
nop
cmp %r10, %r10
mov $11, %rcx
rep movsl
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x166ab, %r14
nop
nop
nop
xor $5032, %rbp
movb $0x61, (%r14)
nop
nop
nop
nop
nop
and $21062, %rbp
lea addresses_A_ht+0x2aeb, %rsi
lea addresses_WT_ht+0x39c3, %rdi
nop
nop
nop
nop
nop
xor $41498, %rbp
mov $33, %rcx
rep movsl
xor %r10, %r10
lea addresses_WC_ht+0x1bcab, %rsi
lea addresses_normal_ht+0x41ab, %rdi
clflush (%rdi)
nop
add %r14, %r14
mov $95, %rcx
rep movsb
nop
nop
xor %r10, %r10
lea addresses_normal_ht+0x14b4b, %rsi
lea addresses_UC_ht+0x7e2b, %rdi
clflush (%rdi)
nop
nop
and $36610, %r14
mov $35, %rcx
rep movsb
nop
nop
xor $42481, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rbp
push %rsi

// Store
lea addresses_WC+0x5a57, %r12
inc %r11
movl $0x51525354, (%r12)
nop
nop
xor $54237, %rsi

// Store
mov $0xcb3, %r8
nop
nop
nop
nop
nop
xor $42596, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, (%r8)
nop
nop
nop
nop
xor %r15, %r15

// Faulty Load
lea addresses_D+0x178ab, %r8
cmp $23355, %r15
vmovups (%r8), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbp
lea oracles, %r11
and $0xff, %rbp
shlq $12, %rbp
mov (%r11,%rbp,1), %rbp
pop %rsi
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': True}}
{'36': 326}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
