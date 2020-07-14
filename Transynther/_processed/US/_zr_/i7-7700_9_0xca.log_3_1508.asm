.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x4c70, %r12
nop
nop
nop
and %r15, %r15
movb $0x61, (%r12)
nop
nop
nop
nop
dec %r13
lea addresses_WT_ht+0x3970, %r11
nop
nop
nop
nop
nop
cmp $24426, %rdx
mov $0x6162636465666768, %rbx
movq %rbx, (%r11)
xor $45281, %rbx
lea addresses_normal_ht+0x1a310, %rsi
lea addresses_normal_ht+0x6c34, %rdi
nop
nop
nop
and $32736, %r12
mov $2, %rcx
rep movsq
nop
inc %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rbp
push %rdi
push %rsi

// Store
lea addresses_RW+0x1a650, %r15
sub %rax, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r15)
nop
nop
cmp $38898, %r15

// Store
lea addresses_US+0xab02, %rdi
clflush (%rdi)
cmp $1494, %r9
movl $0x51525354, (%rdi)
nop
cmp $6097, %rax

// Store
lea addresses_normal+0x16f50, %r13
clflush (%r13)
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %r9
movq %r9, %xmm4
vmovups %ymm4, (%r13)
nop
nop
nop
nop
add %rdi, %rdi

// Store
mov $0xced550000000470, %r13
nop
nop
nop
nop
cmp $60196, %r15
mov $0x5152535455565758, %r9
movq %r9, %xmm7
movntdq %xmm7, (%r13)
nop
nop
nop
nop
xor %rbp, %rbp

// Faulty Load
lea addresses_US+0xcc70, %r15
xor $10142, %rdi
mov (%r15), %si
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}}
{'00': 3}
00 00 00
*/
