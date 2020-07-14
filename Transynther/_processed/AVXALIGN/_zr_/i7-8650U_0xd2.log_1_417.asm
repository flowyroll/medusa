.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r9
push %rcx
push %rsi
lea addresses_UC_ht+0x1c033, %r9
nop
nop
nop
cmp %rcx, %rcx
movb $0x61, (%r9)
nop
nop
nop
nop
nop
sub $20298, %r15
lea addresses_WT_ht+0x6223, %rsi
nop
cmp $20762, %r9
movb $0x61, (%rsi)
and %r11, %r11
pop %rsi
pop %rcx
pop %r9
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rdx

// Load
lea addresses_WT+0x15fc3, %rdx
and $27441, %r12
movb (%rdx), %r11b
nop
nop
nop
nop
nop
and %rbx, %rbx

// Load
lea addresses_US+0x1c923, %r12
clflush (%r12)
nop
nop
and $42312, %r14
mov (%r12), %rdx
nop
nop
and $21162, %rdi

// Load
lea addresses_D+0x4ad5, %rdi
nop
nop
nop
nop
cmp %r14, %r14
movups (%rdi), %xmm6
vpextrq $1, %xmm6, %r11
nop
nop
nop
xor %rbx, %rbx

// Store
mov $0x75c8ae0000000e23, %rdx
nop
nop
nop
dec %r14
movl $0x51525354, (%rdx)
cmp $2705, %rdx

// Store
mov $0x5ab5f80000000923, %rdi
nop
nop
nop
nop
nop
sub $47260, %r12
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rdi)
nop
and %rcx, %rcx

// Load
lea addresses_normal+0x1a463, %rbx
clflush (%rbx)
nop
nop
nop
nop
cmp $1565, %r12
mov (%rbx), %rcx
nop
nop
sub %r11, %r11

// Store
mov $0x1e1e9c0000000e23, %r14
nop
nop
nop
nop
cmp $47967, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r14)
nop
nop
sub $30504, %r12

// Faulty Load
mov $0x1e1e9c0000000e23, %rbx
nop
nop
nop
nop
and %rcx, %rcx
vmovaps (%rbx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r11
lea oracles, %rdx
and $0xff, %r11
shlq $12, %r11
mov (%rdx,%r11,1), %r11
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'00': 1}
00
*/
