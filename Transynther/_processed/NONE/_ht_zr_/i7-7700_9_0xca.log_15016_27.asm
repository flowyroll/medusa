.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xcfdb, %r14
nop
nop
nop
nop
add %r13, %r13
movb (%r14), %dl
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x8357, %rsi
lea addresses_WT_ht+0xa827, %rdi
add $39541, %r11
mov $32, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r13
lea addresses_WC_ht+0x148ff, %rsi
lea addresses_normal_ht+0x93e7, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov $101, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $29409, %rdi
lea addresses_A_ht+0x1eeb3, %rdi
nop
nop
nop
xor $27831, %r11
mov (%rdi), %rsi
nop
nop
nop
nop
and $2255, %rdi
lea addresses_D_ht+0x97a4, %r11
nop
dec %rdx
movw $0x6162, (%r11)
nop
nop
nop
nop
nop
dec %r14
lea addresses_UC_ht+0x1ca87, %rsi
nop
and %r11, %r11
mov (%rsi), %r14d
and $28346, %rsi
lea addresses_UC_ht+0x160c7, %rsi
nop
nop
sub $42705, %rcx
movl $0x61626364, (%rsi)
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0xfc27, %rsi
nop
nop
nop
and $16722, %r13
movl $0x61626364, (%rsi)
nop
nop
nop
inc %rdx
lea addresses_A_ht+0x1227, %rsi
lea addresses_UC_ht+0x9c7, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub %r15, %r15
mov $29, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x15eff, %rsi
nop
nop
nop
nop
dec %r15
movb (%rsi), %r13b
nop
nop
nop
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rdx
push %rsi

// Store
lea addresses_US+0x1007, %r14
clflush (%r14)
nop
cmp $55048, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, (%r14)
nop
nop
nop
nop
nop
add $57724, %rdx

// Faulty Load
lea addresses_WC+0x17c27, %r14
nop
and %r9, %r9
vmovups (%r14), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r8
lea oracles, %r9
and $0xff, %r8
shlq $12, %r8
mov (%r9,%r8,1), %r8
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'48': 10885, '00': 4131}
48 00 00 48 48 00 00 00 00 00 00 00 48 48 48 48 48 48 48 00 00 48 00 00 00 48 48 48 48 00 00 48 48 48 00 48 48 00 00 00 48 48 48 48 48 48 48 48 48 48 48 00 00 00 48 48 48 00 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 00 00 48 48 48 00 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 48 48 48 48 00 00 48 48 00 00 00 48 00 48 00 00 48 00 00 48 48 00 00 00 48 48 48 48 48 48 48 00 00 00 48 48 48 48 48 48 48 00 00 00 48 00 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 00 48 48 48 48 48 48 00 00 00 48 48 48 48 00 00 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 00 48 48 00 00 00 48 48 48 48 00 00 00 00 00 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 00 00 48 00 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 00 48 48 48 48 48 00 00 00 00 00 48 00 48 48 48 48 48 48 48 48 00 00 48 48 48 00 48 48 48 00 00 00 00 00 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 00 00 48 00 00 48 00 48 48 48 48 00 48 48 00 00 48 48 48 48 48 48 00 00 48 00 00 48 48 48 48 48 48 00 00 48 48 48 00 00 00 48 48 48 48 48 48 48 48 48 00 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 00 00 00 48 00 00 48 00 48 48 48 48 48 00 00 48 48 48 48 48 48 48 00 00 00 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 00 48 48 48 48 48 48 48 48 00 00 48 00 48 48 48 48 48 48 48 48 48 48 00 00 48 48 00 48 48 48 48 00 00 48 48 48 00 00 00 48 48 48 48 00 48 48 48 48 48 48 48 48 48 00 48 48 00 00 00 48 48 48 48 48 48 48 48 48 48 48 48 00 00 00 48 48 00 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 00 00 00 48 48 00 00 00 48 48 48 48 48 48 48 48 00 00 48 48 00 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 00 00 00 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 00 00 00 48 48 48 00 00 00 00 48 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 00 48 48 00 48 48 00 48 48 48 48 48 00 00 48 48 48 48 00 00 00 00 48 48 48 48 48 00 48 48 48 48 00 00 00 48 48 00 00 00 48 48 00 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 48 00 00 00 00 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 00 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 00 00 48 00 00 00 00 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 00 00 48 48 48 48 48 48 48 00 00 48 48 48 00 48 48 48 48 00 48 48 48 48 48 48 48 48 00 00 00 48 48 48 48 48 00 00 00 00 00 00 48 48 00 00 00 48 48 48 48 48 48 48 48 00 00 48 48 48 00 48 48 48 48 48 00 00 48 00 48 48 48 48 00 48 48 48 48 48 00 00 00 00 00 00 48 48 48 00 48 48 48 00 48 00 00 00 48 48 00 00 48 00 48 48 48 48 48 48 48 00 00 00 00 00 00 00 48 48 48 48
*/
