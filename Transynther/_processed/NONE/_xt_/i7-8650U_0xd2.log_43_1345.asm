.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x19d99, %r14
add $29630, %rbp
mov $0x6162636465666768, %r8
movq %r8, %xmm4
movups %xmm4, (%r14)
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x3a79, %rsi
nop
nop
xor $52786, %rcx
vmovups (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r10
nop
sub $34414, %rcx
lea addresses_A_ht+0x18809, %rsi
nop
nop
nop
dec %rcx
movw $0x6162, (%rsi)
nop
nop
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0x2479, %rdi
clflush (%rdi)
nop
cmp %r14, %r14
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
sub %r8, %r8
lea addresses_A_ht+0x7479, %r14
nop
nop
nop
cmp $12647, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
and $0xffffffffffffffc0, %r14
movaps %xmm3, (%r14)
nop
cmp $21804, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rdi
push %rdx

// Store
lea addresses_UC+0xd079, %r13
clflush (%r13)
nop
nop
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %r12
movq %r12, (%r13)
dec %rdx

// Load
lea addresses_PSE+0x1c79, %rdi
and %r15, %r15
vmovups (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r12

// Exception!!!
nop
mov (0), %rdi
nop
nop
nop
nop
and %rdi, %rdi

// Load
lea addresses_PSE+0x1c79, %r11
nop
dec %r10
mov (%r11), %r12
nop
nop
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_A+0x1f879, %r10
clflush (%r10)
xor %r11, %r11
movw $0x5152, (%r10)
and %rdi, %rdi

// Store
lea addresses_US+0x16115, %r11
nop
nop
xor %rdi, %rdi
movb $0x51, (%r11)
nop
nop
xor $6275, %rdi

// Store
lea addresses_UC+0xcbf9, %rdx
nop
nop
add $44706, %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm0
vmovups %ymm0, (%rdx)
nop
nop
nop
nop
nop
dec %rdx

// Load
mov $0x690b4a0000000a79, %r10
nop
nop
nop
and $22692, %rdx
mov (%r10), %edi
nop
nop
nop
nop
nop
and $18511, %r11

// Faulty Load
lea addresses_PSE+0x1c79, %r13
nop
dec %rdi
mov (%r13), %r10w
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rdx
pop %rdi
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'33': 43}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
