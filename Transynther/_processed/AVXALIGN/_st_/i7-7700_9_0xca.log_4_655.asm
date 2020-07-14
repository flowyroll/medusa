.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x9620, %r12
nop
nop
add $28844, %rsi
vmovups (%r12), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r9
nop
nop
nop
nop
nop
xor $49983, %r12
lea addresses_normal_ht+0x1470c, %rdi
nop
nop
inc %r8
movl $0x61626364, (%rdi)
nop
nop
nop
nop
sub %r10, %r10
lea addresses_WT_ht+0x16780, %r10
nop
nop
nop
nop
nop
xor $30150, %r8
mov $0x6162636465666768, %r9
movq %r9, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
inc %rsi
lea addresses_A_ht+0xa480, %r12
clflush (%r12)
nop
nop
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm5
and $0xffffffffffffffc0, %r12
movntdq %xmm5, (%r12)
nop
nop
nop
nop
add $23451, %r12
lea addresses_WT_ht+0x1dab2, %r8
nop
nop
nop
nop
nop
and $35229, %rdi
movb $0x61, (%r8)
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x1a3c0, %r8
clflush (%r8)
nop
nop
sub $28834, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r8)
nop
dec %rcx
lea addresses_WC_ht+0x81a0, %rsi
lea addresses_A_ht+0xbc80, %rdi
nop
nop
nop
nop
cmp $26494, %r10
mov $121, %rcx
rep movsw
add %rsi, %rsi
lea addresses_WT_ht+0x1ce8e, %rcx
nop
nop
and %r12, %r12
movb (%rcx), %r9b
and $36940, %rdi
lea addresses_normal_ht+0x7ae4, %rsi
lea addresses_WC_ht+0x4d80, %rdi
and %rbx, %rbx
mov $24, %rcx
rep movsw
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x13380, %rsi
nop
cmp %r12, %r12
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
dec %r10
lea addresses_UC_ht+0xcc20, %rsi
lea addresses_normal_ht+0xee38, %rdi
cmp %r9, %r9
mov $106, %rcx
rep movsq
nop
nop
nop
sub $46473, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Load
lea addresses_D+0x5780, %r11
nop
nop
nop
nop
nop
add $20194, %r15
movups (%r11), %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
sub %rcx, %rcx

// REPMOV
lea addresses_RW+0x57a8, %rsi
lea addresses_WT+0x859a, %rdi
nop
sub $48882, %rbp
mov $58, %rcx
rep movsb
cmp %rsi, %rsi

// Store
lea addresses_WC+0x18070, %rcx
nop
nop
nop
nop
xor %r15, %r15
movb $0x51, (%rcx)
nop
nop
nop
sub $63879, %rsi

// Faulty Load
lea addresses_D+0x5780, %rbp
nop
nop
add %rcx, %rcx
movb (%rbp), %r9b
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_RW'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}}
{'36': 4}
36 36 36 36
*/
