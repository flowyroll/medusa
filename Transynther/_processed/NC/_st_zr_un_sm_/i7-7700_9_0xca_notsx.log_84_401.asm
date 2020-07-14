.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x177f2, %r8
nop
cmp $25437, %r10
movl $0x61626364, (%r8)
nop
nop
nop
nop
xor %r11, %r11
lea addresses_WC_ht+0x10372, %rsi
lea addresses_WT_ht+0x6af0, %rdi
clflush (%rsi)
nop
dec %r15
mov $78, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x9df2, %r11
nop
nop
nop
xor $26525, %rdi
vmovups (%r11), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r13
nop
nop
nop
nop
xor %r10, %r10
lea addresses_normal_ht+0x13032, %r8
nop
nop
xor %rdi, %rdi
movups (%r8), %xmm0
vpextrq $0, %xmm0, %r10
nop
and $23868, %r13
lea addresses_WT_ht+0x1e90a, %rsi
clflush (%rsi)
dec %r11
mov $0x6162636465666768, %r13
movq %r13, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
nop
and $63154, %r11
lea addresses_UC_ht+0x1dbf2, %rdi
nop
dec %r8
movb (%rdi), %cl
nop
cmp $57830, %rsi
lea addresses_WC_ht+0x14252, %rdi
nop
and %r13, %r13
mov $0x6162636465666768, %r10
movq %r10, (%rdi)
nop
nop
nop
and %r15, %r15
lea addresses_D_ht+0xcc72, %rsi
lea addresses_A_ht+0xf932, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
lfence
mov $54, %rcx
rep movsq
nop
nop
nop
nop
and %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rax
push %rdx
push %rsi

// Store
mov $0x22bd5c0000000172, %r10
nop
nop
dec %rsi
mov $0x5152535455565758, %r9
movq %r9, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
inc %r11

// Load
lea addresses_A+0x12d72, %rax
xor %r15, %r15
mov (%rax), %dx
nop
nop
nop
nop
nop
and %rdx, %rdx

// Load
lea addresses_UC+0xab62, %r9
nop
nop
nop
cmp $2593, %rax
movb (%r9), %r10b
nop
sub $28758, %rax

// Load
lea addresses_RW+0x10240, %r15
nop
nop
sub $51319, %rdx
mov (%r15), %r10d
nop
sub $63850, %r11

// Store
lea addresses_UC+0x106c2, %rsi
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_PSE+0x8d72, %r11
and $32598, %r10
movb $0x51, (%r11)
nop
nop
add %r9, %r9

// Faulty Load
mov $0x22bd5c0000000172, %rsi
nop
nop
nop
xor $10503, %rdx
mov (%rsi), %r9d
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'00': 3, '98': 1, 'd6': 1, '58': 79}
58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 d6 58 58 58 58 98 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
