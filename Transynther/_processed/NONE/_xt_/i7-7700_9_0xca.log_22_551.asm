.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x18565, %r11
nop
nop
nop
cmp $17182, %r12
mov $0x6162636465666768, %r8
movq %r8, %xmm1
vmovups %ymm1, (%r11)
nop
nop
nop
nop
xor $6593, %rdi
lea addresses_WT_ht+0x472b, %r11
nop
nop
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %r8
movq %r8, (%r11)
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x1250b, %rbp
sub %r13, %r13
movl $0x61626364, (%rbp)
nop
nop
nop
nop
nop
dec %r12
lea addresses_D_ht+0x1bd8b, %r11
nop
cmp %r13, %r13
and $0xffffffffffffffc0, %r11
movntdqa (%r11), %xmm7
vpextrq $0, %xmm7, %rcx
nop
nop
nop
dec %r13
lea addresses_A_ht+0x5c63, %rcx
dec %rbp
movb $0x61, (%rcx)
and %r13, %r13
lea addresses_UC_ht+0x19f0b, %r13
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r11
movq %r11, (%r13)
nop
nop
and $27881, %r12
lea addresses_normal_ht+0xb18b, %r11
nop
nop
nop
nop
sub $36494, %rbp
movl $0x61626364, (%r11)
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0x342, %rsi
lea addresses_A_ht+0x1498b, %rdi
nop
nop
sub %r13, %r13
mov $31, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rax
push %rbp
push %rsi

// Store
lea addresses_normal+0x1f98b, %r9
nop
dec %r15
mov $0x5152535455565758, %r11
movq %r11, (%r9)
nop
nop
nop
nop
dec %r15

// Store
lea addresses_A+0x1a403, %r10
sub %r11, %r11
movw $0x5152, (%r10)
inc %r15

// Faulty Load
lea addresses_normal+0x1f98b, %rax
nop
nop
nop
dec %rsi
vmovups (%rax), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r9
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rsi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': True, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}}
{'34': 22}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
