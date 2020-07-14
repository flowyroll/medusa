.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x132ee, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $53134, %rcx
mov $0x6162636465666768, %r11
movq %r11, (%rsi)
nop
nop
nop
add $55887, %r10
lea addresses_A_ht+0x17cee, %rbp
clflush (%rbp)
sub $40502, %rax
movw $0x6162, (%rbp)
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_A_ht+0x2d3e, %rsi
lea addresses_A_ht+0x5ade, %rdi
nop
nop
nop
nop
nop
sub $57127, %r10
mov $59, %rcx
rep movsq
nop
mfence
lea addresses_UC_ht+0x50ee, %rsi
lea addresses_WC_ht+0x10ee, %rdi
nop
nop
nop
nop
nop
add $9678, %r9
mov $14, %rcx
rep movsq
nop
dec %rbp
lea addresses_WT_ht+0x48ee, %rbp
nop
nop
nop
nop
nop
and %r9, %r9
movl $0x61626364, (%rbp)
nop
nop
nop
and $58071, %r11
lea addresses_A_ht+0xdb68, %rsi
lea addresses_WT_ht+0xf82e, %rdi
sub %rbp, %rbp
mov $27, %rcx
rep movsw
add $40985, %r10
lea addresses_WC_ht+0xbeee, %rsi
nop
nop
nop
nop
nop
xor $5133, %rdi
mov (%rsi), %r9d
nop
nop
nop
dec %rbp
lea addresses_D_ht+0x516e, %rcx
cmp $30189, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm7
vmovups %ymm7, (%rcx)
xor %rdi, %rdi
lea addresses_WC_ht+0x88ee, %r9
cmp $26753, %r10
mov $0x6162636465666768, %r11
movq %r11, %xmm4
and $0xffffffffffffffc0, %r9
movntdq %xmm4, (%r9)
nop
nop
nop
nop
and $39648, %r11
lea addresses_A_ht+0x1766e, %rsi
lea addresses_D_ht+0x108ee, %rdi
nop
nop
nop
nop
sub %rax, %rax
mov $61, %rcx
rep movsq
nop
nop
nop
cmp $35402, %r9
lea addresses_A_ht+0xe1f2, %rsi
lea addresses_A_ht+0x12fae, %rdi
nop
nop
add $35211, %r10
mov $103, %rcx
rep movsl
nop
nop
nop
cmp %r10, %r10
lea addresses_normal_ht+0x46ee, %rsi
lea addresses_A_ht+0x105ae, %rdi
dec %rbp
mov $52, %rcx
rep movsq
nop
nop
sub %rax, %rax
lea addresses_WC_ht+0x14aee, %rsi
lea addresses_D_ht+0x1974e, %rdi
nop
nop
dec %rax
mov $1, %rcx
rep movsb
nop
nop
nop
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WC+0x152ee, %rsi
lea addresses_RW+0xd62e, %rdi
nop
cmp $35541, %rbx
mov $24, %rcx
rep movsb
nop
nop
nop
cmp $32777, %rsi

// Load
lea addresses_RW+0x4d6e, %rbx
nop
xor $49028, %rdx
movb (%rbx), %r11b
nop
nop
nop
nop
cmp $25861, %rbx

// Faulty Load
lea addresses_A+0x128ee, %rsi
nop
nop
nop
xor %rdi, %rdi
vmovups (%rsi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_RW'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 2, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'00': 3702, '45': 1714, '44': 195, '48': 1}
00 00 45 00 45 00 45 00 00 00 00 00 45 00 00 00 45 45 00 00 45 00 00 00 45 45 00 45 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 44 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 45 45 00 00 45 00 00 00 44 00 00 45 00 00 00 00 00 45 00 00 00 00 00 45 00 45 45 45 00 00 00 45 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 45 45 44 00 45 00 00 00 00 00 00 44 45 00 00 00 00 00 00 45 00 45 00 45 45 00 00 00 00 45 45 00 00 45 45 00 00 00 00 00 00 45 44 45 00 00 00 00 44 44 45 45 00 00 45 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 45 00 45 00 00 00 44 44 00 45 00 00 00 00 00 45 00 00 00 00 00 45 00 45 00 00 00 00 00 45 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 45 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 45 00 45 00 45 45 44 00 00 00 00 00 00 00 00 45 00 45 00 00 00 45 00 00 45 45 00 00 45 45 45 00 45 45 00 00 45 00 45 45 00 00 45 44 45 00 45 00 00 00 45 45 00 45 45 00 00 00 45 00 45 00 00 00 45 00 44 00 45 44 00 45 00 45 00 00 00 00 00 00 00 00 45 45 00 00 45 45 00 45 00 45 00 00 00 44 45 00 45 00 00 00 00 00 45 00 45 00 00 00 00 45 45 00 00 00 00 45 00 45 00 00 00 00 45 00 45 00 45 00 45 45 00 45 00 45 00 45 45 00 00 45 00 00 00 00 45 00 00 00 00 00 00 45 00 45 00 45 45 00 00 45 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 45 00 44 00 00 45 45 00 00 45 00 45 00 45 45 00 00 00 00 00 00 45 00 45 44 00 00 45 45 00 00 45 00 00 45 45 00 00 00 45 00 45 00 00 00 00 45 00 00 00 00 44 00 45 45 45 45 00 00 00 45 00 45 00 00 00 45 00 45 45 45 45 45 00 00 45 00 45 45 45 45 45 00 45 00 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 44 00 00 45 00 00 45 00 00 00 45 00 45 00 45 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00 00 00 45 00 45 45 00 45 00 00 00 00 00 00 00 45 44 00 45 00 00 00 45 00 00 00 00 00 00 00 45 00 45 00 00 00 45 45 00 00 00 00 00 00 00 00 00 45 45 44 00 45 45 45 00 00 00 45 00 45 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 45 45 00 00 45 00 45 00 00 45 45 45 45 00 44 44 00 00 00 00 45 45 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 44 45 00 45 00 00 00 45 45 00 45 00 45 00 00 00 00 00 00 45 44 00 00 00 00 00 00 00 45 00 00 00 45 45 00 00 00 00 45 00 45 45 00 00 45 45 45 45 00 00 00 45 45 00 00 45 45 00 45 00 00 00 00 00 45 45 00 00 45 00 00 00 45 00 00 00 45 00 45 45 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 44 00 00 45 00 00 45 45 45 00 45 45 45 45 00 00 00 44 00 45 45 00 00 45 00 00 45 45 00 00 00 00 00 00 00 45 00 00 45 45 45 00 00 45 45 44 00 00 00 45 00 45 00 45 00 45 45 45 00 00 00 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 45 45 44 00 00 45 45 45 45 45 00 00 44 44 45 44 45 00 45 00 00 00 00 00 45 00 44 45 45 45 00 45 00 45 45 00 45 45 00 44 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 45 00 00 00 45 00 00 00 00 00 45 45 00 00 00 00 00 45 45 00 00 45 00 00 00 00 00 45 00 00 00 00 00 45 00 00
*/
