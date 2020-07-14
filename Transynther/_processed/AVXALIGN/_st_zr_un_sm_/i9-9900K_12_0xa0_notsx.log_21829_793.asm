.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x12ec9, %rbp
nop
xor $33066, %r15
mov (%rbp), %r10w
nop
nop
add $7595, %rcx
lea addresses_UC_ht+0x12010, %rbx
cmp %rbp, %rbp
movb $0x61, (%rbx)
nop
nop
nop
and %rbx, %rbx
lea addresses_D_ht+0xa638, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
cmp $55393, %rcx
movb $0x61, (%rbx)
nop
nop
sub $20231, %r10
lea addresses_UC_ht+0x15c10, %r10
nop
nop
nop
add %r11, %r11
movl $0x61626364, (%r10)
nop
nop
nop
nop
add %r15, %r15
lea addresses_D_ht+0x1010, %rsi
lea addresses_A_ht+0x1eb6, %rdi
nop
nop
inc %rdx
mov $101, %rcx
rep movsl
nop
nop
and %r11, %r11
lea addresses_normal_ht+0xe810, %rbp
nop
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%rbp)
nop
nop
nop
cmp $18075, %rdi
lea addresses_WC_ht+0xb410, %rcx
nop
nop
cmp %rbx, %rbx
movb (%rcx), %dl
nop
nop
nop
cmp $53935, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rax
push %rbp
push %rbx
push %rdx

// Store
lea addresses_PSE+0x1d810, %r11
clflush (%r11)
nop
nop
nop
nop
nop
xor $44267, %r13
movb $0x51, (%r11)
nop
nop
nop
nop
nop
sub $40919, %r11

// Faulty Load
lea addresses_PSE+0x1d810, %rbx
nop
nop
nop
nop
nop
inc %r14
vmovaps (%rbx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r13
lea oracles, %rax
and $0xff, %r13
shlq $12, %r13
mov (%rax,%r13,1), %r13
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 9}, 'OP': 'LOAD'}
{'6d': 16961, '51': 4772, '00': 96}
51 51 6d 6d 6d 6d 6d 6d 6d 6d 51 51 6d 6d 6d 6d 6d 6d 6d 6d 51 6d 6d 51 6d 6d 51 6d 6d 6d 6d 51 6d 6d 51 6d 51 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 51 6d 6d 6d 6d 6d 6d 51 6d 51 6d 6d 6d 6d 51 51 6d 51 6d 6d 51 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 51 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 6d 6d 51 6d 6d 51 6d 51 51 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 51 6d 6d 6d 6d 6d 51 6d 51 51 6d 6d 51 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 51 51 6d 51 6d 6d 6d 51 6d 6d 6d 6d 6d 51 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 51 6d 51 6d 51 6d 6d 51 6d 6d 6d 6d 51 6d 6d 51 51 6d 6d 51 6d 6d 6d 6d 51 51 6d 6d 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 6d 51 51 51 6d 6d 51 6d 6d 6d 51 51 51 6d 51 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 51 6d 6d 6d 6d 51 51 6d 6d 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 6d 51 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 6d 51 6d 51 51 6d 51 6d 6d 6d 51 6d 6d 6d 51 51 6d 6d 51 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 51 51 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 51 6d 6d 6d 6d 51 6d 51 51 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 51 00 6d 6d 51 6d 6d 6d 51 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 6d 51 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 6d 51 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 51 6d 6d 6d 6d 51 6d 6d 51 6d 6d 51 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 51 51 6d 6d 6d 6d 6d 51 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 51 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 6d 51 51 6d 51 51 6d 6d 6d 6d 51 51 6d 6d 6d 51 51 51 6d 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 6d 6d 51 6d 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 51 51 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 6d 51 6d 51 6d 51 6d 51 51 6d 51 51 51 6d 6d 51 6d 6d 6d 51 6d 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 51 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 51 6d 6d 6d 51 51 51 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 6d 6d 51 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 51 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 51 51 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 6d 6d 51 6d 6d 6d 6d 51 51 6d 6d 6d 6d 6d 6d 51 51 6d 6d 6d 6d 6d 6d 6d 6d 6d 51 6d 51 51 51 6d 51 51 51 6d 6d 6d 6d 6d 6d 6d 51 51 6d 6d 6d 6d 6d 6d 51 6d 6d 6d 6d 6d 6d 51 6d
*/
