.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1cb30, %rsi
nop
nop
nop
nop
xor %r13, %r13
movl $0x61626364, (%rsi)
and $59706, %rax
lea addresses_WC_ht+0x17b0, %r10
clflush (%r10)
nop
nop
nop
nop
dec %r11
mov (%r10), %cx
cmp $56965, %r10
lea addresses_WT_ht+0x1b6, %r11
nop
nop
nop
sub $6726, %rcx
and $0xffffffffffffffc0, %r11
vmovntdqa (%r11), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdx
cmp %r13, %r13
lea addresses_D_ht+0x15130, %rax
xor %rsi, %rsi
movb (%rax), %cl
sub %rdx, %rdx
lea addresses_WT_ht+0x9930, %r13
nop
nop
nop
nop
nop
add %r10, %r10
movw $0x6162, (%r13)
nop
cmp $40587, %rsi
lea addresses_A_ht+0x930, %rax
clflush (%rax)
nop
nop
nop
nop
and $10090, %r11
movups (%rax), %xmm7
vpextrq $1, %xmm7, %rsi
inc %rcx
lea addresses_WT_ht+0x16530, %rsi
lea addresses_WT_ht+0x17bb0, %rdi
clflush (%rsi)
nop
nop
lfence
mov $86, %rcx
rep movsb
nop
nop
inc %rsi
lea addresses_D_ht+0x17e80, %rdx
nop
nop
nop
and $4069, %r10
movl $0x61626364, (%rdx)
nop
nop
nop
xor $31887, %rdi
lea addresses_WT_ht+0x2bb0, %rsi
nop
dec %r11
mov (%rsi), %r13d
cmp %r10, %r10
lea addresses_A_ht+0x1270, %rax
nop
nop
nop
nop
nop
sub %rdx, %rdx
movl $0x61626364, (%rax)
nop
sub $65009, %rsi
lea addresses_normal_ht+0x1adb0, %rsi
lea addresses_UC_ht+0x8130, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $25548, %rdx
mov $45, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $45328, %rax
lea addresses_A_ht+0x5916, %r13
nop
dec %rsi
mov $0x6162636465666768, %r11
movq %r11, (%r13)
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_WC_ht+0x9a40, %rsi
lea addresses_UC_ht+0x53df, %rdi
nop
nop
sub $5335, %r10
mov $126, %rcx
rep movsw
nop
nop
add $46116, %r11
lea addresses_UC_ht+0x10288, %rdx
nop
nop
nop
and $48206, %rdi
movl $0x61626364, (%rdx)
sub $54502, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r9
push %rbp
push %rdi
push %rsi

// Store
mov $0x56bdd80000000d10, %r10
nop
inc %r14
movl $0x51525354, (%r10)
nop
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_WT+0x140ac, %rsi
sub $28551, %r14
mov $0x5152535455565758, %r10
movq %r10, %xmm3
movups %xmm3, (%rsi)
nop
nop
xor $53705, %rbp

// Store
lea addresses_WC+0x13c43, %rbp
xor $1720, %r11
mov $0x5152535455565758, %r9
movq %r9, %xmm4
vmovups %ymm4, (%rbp)
nop
nop
nop
cmp $50814, %rsi

// Store
lea addresses_WT+0x10eb0, %rsi
nop
nop
and $18335, %rdi
movw $0x5152, (%rsi)
nop
dec %rbp

// Faulty Load
mov $0x6321400000000930, %r11
nop
nop
nop
add $60689, %r9
movb (%r11), %r10b
lea oracles, %r9
and $0xff, %r10
shlq $12, %r10
mov (%r9,%r10,1), %r10
pop %rsi
pop %rdi
pop %rbp
pop %r9
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': True, 'size': 4, 'NT': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
