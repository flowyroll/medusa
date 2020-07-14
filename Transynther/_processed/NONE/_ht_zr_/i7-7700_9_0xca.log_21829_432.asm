.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x17433, %rsi
nop
nop
xor %rdi, %rdi
movb (%rsi), %r9b
nop
nop
nop
nop
add $13385, %rax
lea addresses_WC_ht+0x180b3, %rbp
nop
nop
sub %r12, %r12
movl $0x61626364, (%rbp)
nop
nop
nop
nop
nop
dec %rbp
lea addresses_D_ht+0x1cf13, %rsi
lea addresses_D_ht+0x4e73, %rdi
nop
and $35058, %r15
mov $91, %rcx
rep movsl
nop
nop
nop
nop
xor $29665, %rsi
lea addresses_A_ht+0x169d3, %rsi
lea addresses_WT_ht+0x1b273, %rdi
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $24, %rcx
rep movsq
nop
xor %rax, %rax
lea addresses_A_ht+0x14ba3, %rsi
lea addresses_WC_ht+0x195fe, %rdi
xor $33269, %r15
mov $97, %rcx
rep movsw
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x10b3, %rbp
clflush (%rbp)
nop
nop
xor $27193, %rcx
movw $0x6162, (%rbp)
nop
nop
nop
nop
cmp $23622, %rax
lea addresses_UC_ht+0x7cb3, %rsi
lea addresses_WC_ht+0x11ac9, %rdi
nop
nop
and $47297, %rbp
mov $91, %rcx
rep movsb
and %rdi, %rdi
lea addresses_normal_ht+0x8f13, %rsi
nop
nop
nop
sub $49865, %r12
mov $0x6162636465666768, %rbp
movq %rbp, (%rsi)
nop
sub %rbp, %rbp
lea addresses_A_ht+0x7633, %r9
nop
nop
sub %r15, %r15
mov (%r9), %si
nop
add $43939, %r12
lea addresses_A_ht+0xb873, %rsi
lea addresses_normal_ht+0xa253, %rdi
nop
sub $55642, %rbp
mov $108, %rcx
rep movsl
nop
nop
xor $446, %r12
lea addresses_normal_ht+0xf73, %rcx
nop
nop
nop
nop
xor %r15, %r15
movups (%rcx), %xmm1
vpextrq $1, %xmm1, %rbp
xor %rdi, %rdi
lea addresses_UC_ht+0x13673, %r9
nop
cmp %r12, %r12
mov (%r9), %bp
sub $62455, %rdi
lea addresses_A_ht+0x19183, %rsi
and $54345, %rcx
movups (%rsi), %xmm2
vpextrq $0, %xmm2, %r12
nop
and %r12, %r12
lea addresses_D_ht+0x14593, %rsi
lea addresses_D_ht+0xb133, %rdi
inc %rax
mov $49, %rcx
rep movsb
nop
nop
nop
nop
nop
and $14671, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %r9
push %rbp
push %rbx

// Store
mov $0x9f3, %rbp
sub %rbx, %rbx
mov $0x5152535455565758, %r8
movq %r8, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
nop
xor $25032, %r13

// Faulty Load
lea addresses_A+0x17e73, %rbx
nop
nop
sub $3023, %rbp
movups (%rbx), %xmm7
vpextrq $1, %xmm7, %r9
lea oracles, %rbp
and $0xff, %r9
shlq $12, %r9
mov (%rbp,%r9,1), %r9
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 6, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': True, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': True, 'size': 8, 'NT': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}}
{'46': 408, '45': 4794, '00': 16627}
00 00 00 45 00 00 45 00 00 45 00 00 00 45 00 00 45 00 00 46 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 45 00 00 45 00 00 45 00 00 00 00 00 00 45 00 00 00 45 00 00 45 00 00 45 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 45 00 00 45 00 00 00 46 00 00 46 00 00 45 00 00 00 45 00 00 46 00 00 45 00 00 00 00 00 45 00 00 00 45 00 00 46 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 46 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 45 00 00 45 00 00 00 00 00 00 45 00 00 45 00 00 45 00 00 45 45 00 00 46 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 45 00 00 00 45 00 00 45 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 45 00 45 00 00 00 45 00 00 45 00 00 45 00 00 00 45 00 00 45 00 45 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 45 00 00 45 00 00 45 00 00 45 00 00 00 45 00 00 46 00 00 45 00 00 00 45 00 45 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 45 00 00 00 45 00 00 45 00 00 45 00 00 45 00 00 00 00 00 00 45 00 00 45 00 00 45 00 00 45 00 00 00 45 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 45 00 00 45 00 00 45 00 00 00 45 00 00 45 00 00 00 00 00 45 00 00 45 00 00 00 46 00 00 45 00 00 45 00 00 00 00 00 00 45 00 00 45 00 00 45 00 00 00 45 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 45 00 00 00 45 00 00 46 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 46 00 00 45 00 00 45 00 00 00 45 00 00 45 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 45 00 00 00 45 00 00 45 00 00 00 45 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 45 00 00 45 00 00 45 00 00 00 45 00 00 46 00 00 00 00 00 45 00 00 45 00 00 45 00 00 45 00 00 00 00 00 45 00 00 00 45 00 00 45 00 00 45 00 00 00 45 00 00 45 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 45 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 45 45 00 45 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 45 00 00 45 00 00 00 45 00 00 46 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 45 00 00 45 00 00 45 00 00 00 45 00 00 00 00 00 45 00 00 45 00 00 00 00 00 46 00 00 00 45 00 00 45 00 00 45 00 00 45 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 45 00 00 45 00 00 00 45 00 45 00 00 00 45 00 00 45 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 45 00 00 45 00 00 45 00 00 00 45 00 00 46 00 00 45 00 00 45 00 00 45 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 45 00 00 45 00 00 00 45 00 00 45 00 00 45 00 00 00 45 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 46 00 00 45 00 00 45 00 00 45 00 00 00 45 00 00 45 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 45 00 00 45 00 00 45 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00
*/
