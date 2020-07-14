.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x180c7, %rdx
add $47294, %r8
mov (%rdx), %rbx
nop
cmp %r15, %r15
lea addresses_D_ht+0x11ca7, %rdx
nop
and $20274, %rsi
mov (%rdx), %r11
sub %r8, %r8
lea addresses_D_ht+0x82c7, %rsi
lea addresses_WC_ht+0x17cc7, %rdi
nop
add %rdx, %rdx
mov $35, %rcx
rep movsb
nop
nop
nop
nop
sub $4446, %r8
lea addresses_UC_ht+0x12847, %rsi
lea addresses_UC_ht+0x8967, %rdi
nop
nop
nop
xor %r8, %r8
mov $42, %rcx
rep movsb
nop
nop
nop
sub %r8, %r8
lea addresses_D_ht+0x1c8c7, %r8
nop
and %rsi, %rsi
movl $0x61626364, (%r8)
nop
dec %r11
lea addresses_WT_ht+0x6185, %rsi
lea addresses_UC_ht+0x1ac7, %rdi
inc %r15
mov $123, %rcx
rep movsl
nop
nop
nop
inc %rcx
lea addresses_D_ht+0xd292, %r15
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
and $0xffffffffffffffc0, %r15
vmovaps %ymm4, (%r15)
nop
nop
nop
cmp $47381, %rsi
lea addresses_normal_ht+0x13ac7, %r15
nop
nop
nop
sub %rdi, %rdi
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
add $7818, %rsi
lea addresses_normal_ht+0xecc7, %r8
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %r15
movq %r15, %xmm5
movups %xmm5, (%r8)
nop
nop
nop
xor $13359, %rbx
lea addresses_D_ht+0xe7c7, %rsi
lea addresses_D_ht+0x55f, %rdi
nop
nop
nop
nop
nop
sub %r8, %r8
mov $4, %rcx
rep movsq
nop
nop
nop
cmp $20750, %rdx
lea addresses_WT_ht+0x18047, %rdx
sub %r15, %r15
mov (%rdx), %rdi
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_A_ht+0xf8c7, %r15
clflush (%r15)
inc %r11
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
nop
nop
add $30709, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi

// Store
mov $0xc7, %r9
clflush (%r9)
nop
nop
xor $33792, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r9)
nop
nop
nop
nop
and %rax, %rax

// Store
lea addresses_US+0x1fba1, %r8
nop
nop
xor %rcx, %rcx
movw $0x5152, (%r8)
nop
dec %rax

// Faulty Load
lea addresses_US+0x1d4c7, %r13
clflush (%r13)
nop
nop
nop
cmp %rcx, %rcx
movb (%r13), %r8b
lea oracles, %r13
and $0xff, %r8
shlq $12, %r8
mov (%r13,%r8,1), %r8
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': True, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
