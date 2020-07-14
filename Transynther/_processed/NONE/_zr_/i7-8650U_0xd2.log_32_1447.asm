.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x5502, %rsi
lea addresses_WT_ht+0xaa82, %rdi
nop
nop
nop
nop
add $33236, %r10
mov $87, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r13
lea addresses_D_ht+0x4ac2, %rdi
nop
nop
nop
nop
and %r9, %r9
movups (%rdi), %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
nop
nop
nop
sub $26203, %r9
lea addresses_D_ht+0x1482a, %r10
nop
nop
inc %rcx
movb $0x61, (%r10)
xor %rsi, %rsi
lea addresses_A_ht+0xe532, %rdi
clflush (%rdi)
nop
lfence
mov (%rdi), %r13d
nop
nop
nop
nop
nop
mfence
lea addresses_normal_ht+0x7d02, %rsi
lea addresses_UC_ht+0x1b5f4, %rdi
clflush (%rdi)
cmp $31763, %r15
mov $100, %rcx
rep movsw
nop
nop
nop
sub $40226, %rsi
lea addresses_A_ht+0x10702, %r15
nop
nop
and $53027, %rdi
movb (%r15), %r13b
nop
nop
nop
nop
nop
and $42770, %r15
lea addresses_WC_ht+0xa132, %r10
nop
nop
nop
nop
cmp %r13, %r13
mov (%r10), %r15w
and %r10, %r10
lea addresses_UC_ht+0xda82, %rsi
lea addresses_normal_ht+0xd982, %rdi
nop
nop
nop
nop
nop
sub $6136, %rbx
mov $67, %rcx
rep movsw
nop
nop
nop
nop
nop
and $62886, %r13
lea addresses_WT_ht+0x8702, %rsi
lea addresses_WT_ht+0x15502, %rdi
nop
mfence
mov $57, %rcx
rep movsw
nop
nop
nop
nop
sub %r15, %r15
lea addresses_WC_ht+0xe862, %rbx
cmp %r9, %r9
mov (%rbx), %rcx
nop
cmp $9117, %r9
lea addresses_WC_ht+0x9502, %r13
nop
nop
inc %rbx
movw $0x6162, (%r13)
nop
nop
add %r9, %r9
lea addresses_UC_ht+0xad02, %rsi
lea addresses_WT_ht+0x11109, %rdi
nop
nop
nop
xor $14058, %r15
mov $3, %rcx
rep movsl
nop
nop
nop
nop
sub $33297, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x1cd02, %rsi
lea addresses_PSE+0x16c82, %rdi
nop
nop
nop
nop
nop
add %r14, %r14
mov $7, %rcx
rep movsw
nop
nop
inc %r13

// Store
lea addresses_WC+0x4832, %rbx
cmp %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%rbx)
nop
nop
nop
and $8882, %rbx

// Store
lea addresses_RW+0x1ab02, %rbx
nop
nop
nop
nop
nop
and $59658, %r14
movb $0x51, (%rbx)
nop
nop
nop
nop
nop
cmp %r11, %r11

// Faulty Load
lea addresses_UC+0x11d02, %rbx
nop
nop
nop
nop
nop
xor $15156, %r14
movups (%rbx), %xmm1
vpextrq $0, %xmm1, %rcx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_PSE', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'00': 32}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
