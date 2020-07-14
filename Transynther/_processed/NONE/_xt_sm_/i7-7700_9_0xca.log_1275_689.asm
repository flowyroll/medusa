.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x14faf, %r15
clflush (%r15)
nop
nop
cmp %rbp, %rbp
vmovups (%r15), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
nop
cmp %r12, %r12
lea addresses_UC_ht+0x8287, %rsi
lea addresses_normal_ht+0x10287, %rdi
nop
nop
add $51623, %r9
mov $66, %rcx
rep movsw
and %rdi, %rdi
lea addresses_WC_ht+0x487, %r15
nop
nop
nop
add %rbp, %rbp
movups (%r15), %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_WT_ht+0x14a87, %rdi
nop
nop
sub $20088, %r9
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %rbp
nop
nop
nop
nop
and $16338, %rbp
lea addresses_D_ht+0xa287, %rsi
lea addresses_WC_ht+0x1a367, %rdi
nop
sub %r8, %r8
mov $127, %rcx
rep movsq
nop
nop
nop
nop
xor %r9, %r9
lea addresses_WT_ht+0x1220b, %r9
nop
nop
nop
sub $48406, %r8
movl $0x61626364, (%r9)
nop
nop
nop
nop
sub $2123, %r12
lea addresses_D_ht+0xa4a7, %rcx
clflush (%rcx)
nop
nop
mfence
mov (%rcx), %ebp
nop
nop
nop
nop
and $6828, %r15
lea addresses_normal_ht+0x9e87, %rsi
lea addresses_WC_ht+0x10287, %rdi
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $30, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r15
lea addresses_WC_ht+0x1e2f6, %rcx
nop
nop
nop
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %r9
movq %r9, (%rcx)
nop
nop
nop
nop
nop
sub %r9, %r9
lea addresses_normal_ht+0x1ee87, %rsi
lea addresses_D_ht+0x607f, %rdi
nop
nop
sub $43133, %r15
mov $112, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $40977, %r15
lea addresses_normal_ht+0x21e7, %r15
clflush (%r15)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
sub $26853, %r12
lea addresses_WT_ht+0x129af, %r12
nop
nop
xor $57841, %r8
vmovups (%r12), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_WT+0xc687, %r15
nop
nop
nop
xor $5261, %rcx
movb $0x51, (%r15)
nop
nop
sub %rcx, %rcx

// Store
lea addresses_RW+0x9287, %rcx
nop
nop
nop
nop
nop
sub $48856, %r11
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rcx)
nop
and $45542, %rax

// Store
lea addresses_WT+0x6a87, %rbp
clflush (%rbp)
nop
nop
add $37131, %r8
mov $0x5152535455565758, %r11
movq %r11, %xmm2
movups %xmm2, (%rbp)
xor $37544, %r8

// Store
mov $0x395f1d00000009c7, %rbp
nop
nop
cmp $453, %r8
mov $0x5152535455565758, %rax
movq %rax, (%rbp)
nop
nop
nop
nop
nop
add $11063, %r15

// Store
lea addresses_D+0x10147, %r11
nop
nop
nop
xor $63429, %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm2
movups %xmm2, (%r11)
nop
nop
nop
nop
add $47983, %r11

// Store
lea addresses_D+0x19bff, %rcx
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovaps %ymm0, (%rcx)
nop
nop
cmp %r8, %r8

// Faulty Load
lea addresses_RW+0x9287, %rbp
nop
nop
nop
xor %rax, %rax
mov (%rbp), %r11w
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'58': 1275}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
