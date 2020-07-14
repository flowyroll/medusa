.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xf57f, %rcx
nop
nop
nop
nop
nop
xor %rsi, %rsi
vmovups (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
nop
add $64397, %r15
lea addresses_D_ht+0x1493, %rbp
nop
nop
nop
inc %rax
movups (%rbp), %xmm4
vpextrq $1, %xmm4, %r13
nop
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x13343, %r13
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movups (%r13), %xmm3
vpextrq $1, %xmm3, %rdi
nop
add $58639, %rdi
lea addresses_A_ht+0x1e263, %rsi
nop
nop
nop
and $25125, %rcx
movups (%rsi), %xmm0
vpextrq $1, %xmm0, %r15
nop
nop
nop
add $50903, %rax
lea addresses_UC_ht+0xa9e3, %rdi
nop
nop
nop
nop
nop
and $39138, %rsi
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r15
nop
nop
nop
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0x9363, %rbp
nop
nop
nop
nop
and %rax, %rax
movl $0x61626364, (%rbp)
nop
and %r13, %r13
lea addresses_WT_ht+0x1b63, %r13
nop
nop
nop
nop
xor %rax, %rax
mov $0x6162636465666768, %rsi
movq %rsi, (%r13)
nop
nop
nop
nop
nop
add $45477, %rdi
lea addresses_WC_ht+0x13363, %r13
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
vmovups %ymm2, (%r13)
nop
nop
cmp %r15, %r15
lea addresses_A_ht+0x11023, %rsi
lea addresses_UC_ht+0xb986, %rdi
clflush (%rsi)
nop
dec %r11
mov $125, %rcx
rep movsb
nop
nop
cmp %rax, %rax
lea addresses_WT_ht+0x8b63, %rsi
lea addresses_WT_ht+0x1eb63, %rdi
clflush (%rsi)
sub $5072, %r15
mov $4, %rcx
rep movsw
cmp %rcx, %rcx
lea addresses_UC_ht+0x1cf53, %rdi
nop
add $19906, %rcx
movb $0x61, (%rdi)
nop
nop
nop
xor $26720, %rcx
lea addresses_WC_ht+0xde63, %rcx
nop
nop
nop
nop
inc %r13
mov (%rcx), %rbp
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x363, %rsi
lea addresses_WC_ht+0x2063, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov $40, %rcx
rep movsb
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rax
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_RW+0xe563, %r9
nop
nop
nop
xor $59801, %rax
movw $0x5152, (%r9)
nop
nop
and %rbp, %rbp

// Store
lea addresses_A+0x590f, %rbx
nop
nop
nop
nop
xor %r9, %r9
movw $0x5152, (%rbx)
nop
sub %rbp, %rbp

// Store
lea addresses_US+0xdb63, %r9
nop
nop
nop
nop
nop
and $45627, %rdx
movb $0x51, (%r9)
nop
nop
nop
nop
xor %rdx, %rdx

// Faulty Load
lea addresses_WC+0x1e363, %rbx
cmp $62455, %rdi
vmovups (%rbx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rax
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}}
{'44': 12, '00': 11421, '40': 25, '45': 10355, '05': 16}
45 45 45 45 00 45 00 00 45 45 00 00 45 45 00 00 45 00 00 45 00 00 00 45 45 00 45 45 00 00 45 45 00 00 00 45 00 00 45 45 45 00 45 00 00 00 45 45 45 45 45 00 45 45 00 45 00 45 00 00 45 00 45 45 45 00 00 00 00 00 45 45 00 45 00 45 00 45 45 00 45 45 00 00 45 00 45 00 00 45 00 00 00 45 45 45 00 00 45 00 00 45 00 00 45 00 45 45 45 45 45 00 00 00 45 00 45 00 00 45 00 00 45 45 45 45 00 45 45 00 45 00 45 45 00 00 45 45 45 00 00 00 45 45 45 45 00 00 45 00 45 45 00 00 00 00 00 00 45 00 45 45 00 00 45 45 45 00 00 00 45 45 45 00 45 00 00 00 00 00 00 00 00 00 45 45 00 00 00 45 45 00 45 00 00 45 00 00 00 45 45 45 00 45 45 45 00 44 45 45 00 45 00 45 00 45 45 00 00 00 45 00 45 45 00 45 00 00 00 00 00 45 45 45 00 00 00 00 45 45 00 00 45 00 45 45 00 00 00 00 00 45 45 00 00 00 00 00 45 00 00 00 45 45 45 00 45 45 00 00 45 45 45 45 45 00 00 45 00 00 45 00 00 00 00 00 00 45 00 00 00 45 00 45 00 00 00 00 45 00 45 00 00 45 00 00 00 45 45 00 45 00 00 45 00 45 00 45 45 00 45 00 45 45 00 45 45 00 45 45 45 45 45 45 45 45 00 45 45 00 00 00 45 00 00 00 00 45 00 45 00 45 00 00 45 45 45 45 45 45 00 00 45 00 45 00 00 00 00 00 44 00 00 45 45 00 45 00 45 45 45 00 00 00 00 00 45 45 00 00 45 00 00 45 45 00 45 00 00 00 45 45 45 45 00 45 00 00 45 00 00 45 45 45 00 45 45 00 45 00 00 45 00 45 45 45 00 00 45 00 45 00 00 00 45 00 45 00 00 00 00 45 00 00 45 00 00 45 45 00 45 00 45 45 00 00 45 00 00 45 00 45 00 45 00 45 00 00 00 00 45 45 45 45 45 00 00 45 00 45 00 45 45 45 00 00 00 00 00 45 45 00 00 00 45 00 45 00 45 45 45 00 45 45 45 00 45 45 45 45 00 00 00 00 45 45 45 00 45 00 45 45 45 45 00 00 45 00 00 45 00 45 00 00 00 00 00 00 45 45 45 00 45 00 45 45 45 00 00 45 45 00 00 00 45 45 45 45 45 00 00 00 45 45 00 45 45 45 00 45 45 00 00 45 00 00 00 45 45 45 45 45 45 00 00 45 45 45 00 00 45 00 00 00 45 00 00 00 45 45 00 45 00 45 45 45 45 00 45 45 00 00 00 00 00 00 45 00 00 00 00 45 00 45 00 45 00 00 00 45 45 45 00 00 45 45 45 00 00 45 00 00 00 00 00 45 00 00 00 45 45 00 45 45 00 00 45 45 45 45 45 45 45 00 45 00 00 00 45 45 00 00 45 00 00 00 00 00 45 45 00 00 00 00 45 45 00 45 45 45 45 00 00 45 45 45 00 00 45 45 00 45 45 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 00 00 45 45 00 00 00 00 00 45 45 00 00 00 00 45 00 45 45 00 00 45 45 00 00 00 45 45 45 00 00 45 00 00 45 00 45 05 45 00 00 00 45 45 45 00 45 00 00 45 00 45 00 45 45 00 00 00 00 45 45 00 45 45 45 00 45 45 00 45 45 45 45 45 00 00 00 00 45 45 45 45 45 00 45 00 45 45 45 00 45 45 45 45 45 00 45 45 45 00 00 00 00 00 00 45 45 45 00 45 00 00 45 00 45 45 00 45 45 00 00 45 45 00 45 45 45 45 45 45 45 45 45 45 00 00 00 00 45 00 45 45 00 00 00 45 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 45 00 00 45 00 00 45 45 00 45 00 45 45 45 00 00 45 00 45 00 00 00 45 45 44 45 45 45 00 00 45 00 45 00 45 45 00 45 45 00 00 00 45 45 45 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 45 00 00 45 00 45 45 45 45 45 45 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 00 00 00 00 45 45 00 00 45 00 45 00 00
*/
