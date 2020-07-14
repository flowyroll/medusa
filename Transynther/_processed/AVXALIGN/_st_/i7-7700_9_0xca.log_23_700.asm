.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x175b5, %rsi
lea addresses_normal_ht+0x4bb5, %rdi
sub %rax, %rax
mov $89, %rcx
rep movsw
nop
nop
nop
cmp $64993, %rsi
lea addresses_D_ht+0xba9d, %rsi
lea addresses_WT_ht+0x2bb5, %rdi
and $51890, %r14
mov $63, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $53583, %rcx
lea addresses_normal_ht+0x179b5, %rsi
lea addresses_WT_ht+0xdb5, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %r11, %r11
mov $81, %rcx
rep movsw
xor %rax, %rax
lea addresses_A_ht+0x1e675, %rcx
nop
nop
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %r14
movq %r14, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0xc0d, %r14
xor $30764, %rdi
vmovups (%r14), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r11
nop
nop
nop
nop
nop
xor $26783, %r11
lea addresses_normal_ht+0x179b5, %rax
sub $44580, %r11
movb $0x61, (%rax)
xor %r15, %r15
lea addresses_A_ht+0x91b5, %r11
clflush (%r11)
nop
nop
nop
nop
nop
dec %rcx
movb $0x61, (%r11)
nop
nop
nop
sub %r15, %r15
lea addresses_WC_ht+0x16f35, %rsi
lea addresses_A_ht+0x11c41, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
xor $2181, %rbx
mov $85, %rcx
rep movsl
nop
nop
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x12475, %r10
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r10)
nop
nop
nop
sub $22396, %r10

// REPMOV
lea addresses_A+0x3008, %rsi
lea addresses_US+0x1e571, %rdi
nop
and %r15, %r15
mov $60, %rcx
rep movsb
xor %r8, %r8

// Faulty Load
lea addresses_PSE+0x101b5, %rcx
nop
nop
nop
nop
and %rsi, %rsi
mov (%rcx), %r10w
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}}
{'33': 23}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
