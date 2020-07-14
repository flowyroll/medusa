.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x17689, %rsi
lea addresses_normal_ht+0x120ee, %rdi
nop
nop
sub %r13, %r13
mov $71, %rcx
rep movsq
nop
nop
and $52760, %r12
lea addresses_D_ht+0x11c88, %r11
nop
dec %rdx
vmovups (%r11), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x14309, %rdx
nop
nop
nop
add $5232, %rsi
movb (%rdx), %r13b
nop
nop
add $18230, %rdi
lea addresses_WT_ht+0x3c9, %rsi
lea addresses_UC_ht+0x178b9, %rdi
nop
nop
nop
sub $31123, %r12
mov $51, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0xd209, %r10
nop
nop
nop
nop
nop
add $35591, %rbp
mov $0x5152535455565758, %r13
movq %r13, (%r10)
nop
nop
nop
nop
and %r11, %r11

// Store
lea addresses_D+0x19f57, %rcx
clflush (%rcx)
nop
nop
inc %rbx
movw $0x5152, (%rcx)
nop
nop
nop
sub $13049, %rbx

// REPMOV
lea addresses_WT+0x1c89, %rsi
lea addresses_A+0x19309, %rdi
nop
nop
nop
nop
dec %rbp
mov $102, %rcx
rep movsw
nop
nop
cmp $41708, %r13

// Store
lea addresses_PSE+0x759, %r13
nop
nop
xor %rbx, %rbx
movb $0x51, (%r13)
nop
nop
xor %r10, %r10

// Faulty Load
mov $0x61372b0000000089, %rbx
xor $967, %rbp
movups (%rbx), %xmm5
vpextrq $1, %xmm5, %rsi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_WT', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 2, 'NT': True, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'39': 20200, '46': 9, '49': 1512, '00': 103, '96': 1, '47': 4}
00 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 49 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 49 39 39 39 39 39 39 39 39 39 49 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 49 39 39 39 39 39 39 39 49 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 49 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39 39 49 39 39 39 39 49 39 39 39 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 49 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 49 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 49 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 49 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 49 39 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39 39 49 39 39 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 49 39 39 39 49 39 39 39 39 39 39 49 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39 49 39 39 39 39 39 49 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 49 39 39 39 39
*/
