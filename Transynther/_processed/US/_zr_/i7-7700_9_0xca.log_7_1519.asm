.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1562f, %r12
nop
nop
nop
nop
nop
cmp $48252, %r11
movl $0x61626364, (%r12)
nop
nop
inc %rbx
lea addresses_A_ht+0x7ea7, %rsi
lea addresses_WC_ht+0x17b7, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %rdx, %rdx
mov $28, %rcx
rep movsb
xor %r11, %r11
lea addresses_UC_ht+0x82b3, %rsi
nop
add $3371, %rbx
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
add $11267, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdx

// Store
mov $0x5f70630000000f17, %r11
nop
nop
nop
nop
nop
cmp $25588, %r14
movl $0x51525354, (%r11)
nop
nop
cmp %r14, %r14

// Load
lea addresses_WT+0x1b983, %rdx
nop
nop
nop
nop
dec %r9
movb (%rdx), %r11b
nop
nop
nop
inc %r14

// Store
lea addresses_US+0x153d3, %r14
add %r12, %r12
movb $0x51, (%r14)
nop
nop
and %rdx, %rdx

// Faulty Load
lea addresses_US+0x4f17, %r11
nop
nop
nop
nop
sub %rdx, %rdx
vmovups (%r11), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_NC'}}
{'src': {'congruent': 2, 'AVXalign': True, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}}
{'00': 7}
00 00 00 00 00 00 00
*/
