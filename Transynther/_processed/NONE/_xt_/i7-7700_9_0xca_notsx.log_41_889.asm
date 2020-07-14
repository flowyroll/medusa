.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1c083, %rdi
nop
nop
nop
nop
nop
cmp %r15, %r15
mov (%rdi), %r13
nop
inc %r13
lea addresses_WC_ht+0x13d43, %rsi
lea addresses_D_ht+0x2303, %rdi
cmp %r9, %r9
mov $82, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r9
lea addresses_WT_ht+0xdd2b, %r15
clflush (%r15)
sub $56374, %rax
mov $0x6162636465666768, %r9
movq %r9, %xmm4
vmovups %ymm4, (%r15)
nop
nop
nop
nop
cmp $29189, %r15
lea addresses_A_ht+0x9c83, %r15
nop
nop
cmp $24916, %rdi
movb (%r15), %cl
cmp $59669, %r13
lea addresses_UC_ht+0x1f97, %rsi
lea addresses_WT_ht+0x1c1cb, %rdi
clflush (%rsi)
nop
nop
add $30499, %rbp
mov $14, %rcx
rep movsl
nop
and $55678, %rsi
lea addresses_WT_ht+0x7443, %r9
and %rbp, %rbp
movw $0x6162, (%r9)
nop
nop
nop
nop
cmp $62254, %rcx
lea addresses_WT_ht+0x1b883, %rdi
and $32662, %r15
movb (%rdi), %cl
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0x1a83, %rsi
nop
nop
nop
nop
add $32971, %r13
mov (%rsi), %r15
nop
nop
nop
nop
nop
and $30653, %r9
lea addresses_WC_ht+0x18883, %r15
nop
sub %rdi, %rdi
movb (%r15), %cl
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x1ac83, %r15
nop
nop
nop
nop
nop
xor $62041, %r13
vmovups (%r15), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rax
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x1c71e, %r9
nop
nop
nop
nop
nop
and $50147, %rcx
movb $0x61, (%r9)
nop
nop
sub %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rax
push %rdi
push %rdx

// Store
mov $0x46697100000005e2, %r10
nop
nop
nop
nop
nop
xor $56944, %rdi
movb $0x51, (%r10)
nop
nop
nop
nop
nop
sub %rax, %rax

// Store
mov $0xa3d040000000883, %r11
nop
add $24892, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm7
vmovups %ymm7, (%r11)
nop
nop
nop
nop
sub %r13, %r13

// Faulty Load
lea addresses_RW+0xd083, %r10
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov (%r10), %r13w
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 6, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'32': 41}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
