.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r9
push %rbp
push %rcx
push %rdi
lea addresses_UC_ht+0x18323, %r14
nop
nop
dec %r9
movb (%r14), %r10b
nop
nop
nop
dec %r10
lea addresses_WC_ht+0xe723, %r11
nop
nop
nop
nop
and %rbp, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
and $0xffffffffffffffc0, %r11
movaps %xmm7, (%r11)
nop
nop
sub $2488, %r9
lea addresses_D_ht+0xbde7, %r10
clflush (%r10)
add $21292, %r9
movups (%r10), %xmm5
vpextrq $1, %xmm5, %rbp
nop
nop
nop
nop
sub $49196, %rdi
lea addresses_D_ht+0x15523, %rbp
nop
nop
nop
nop
sub $1043, %r10
movb (%rbp), %r14b
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x11b23, %rcx
nop
nop
nop
nop
xor %r11, %r11
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
movups %xmm7, (%rcx)
nop
and $21899, %rcx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rax
push %rdi

// Store
lea addresses_PSE+0xb123, %r9
clflush (%r9)
nop
nop
nop
nop
nop
cmp $4000, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r9)
and %r14, %r14

// Faulty Load
lea addresses_A+0x13b23, %rax
xor %r8, %r8
movups (%rax), %xmm0
vpextrq $0, %xmm0, %r14
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}}
{'00': 8}
00 00 00 00 00 00 00 00
*/
