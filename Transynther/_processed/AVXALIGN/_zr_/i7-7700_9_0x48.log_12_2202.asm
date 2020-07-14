.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x19856, %rbp
nop
nop
sub $9497, %r13
movl $0x61626364, (%rbp)
nop
nop
cmp $16146, %r15
lea addresses_WC_ht+0xeb56, %rsi
lea addresses_WT_ht+0x12cb2, %rdi
nop
nop
nop
cmp $981, %r11
mov $92, %rcx
rep movsb
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x149d6, %r15
nop
and %r13, %r13
mov (%r15), %edi
nop
nop
xor %r12, %r12
lea addresses_A_ht+0xebd6, %r15
nop
nop
nop
inc %r11
movups (%r15), %xmm0
vpextrq $0, %xmm0, %r12
nop
nop
and $2595, %rsi
lea addresses_A_ht+0x1d856, %rbp
nop
nop
inc %r11
movl $0x61626364, (%rbp)
nop
nop
nop
sub $18619, %r15
lea addresses_WC_ht+0x1c456, %r12
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r12)
nop
nop
nop
and $60903, %r11
lea addresses_A_ht+0x4536, %r11
nop
and %r13, %r13
mov (%r11), %cx
nop
sub %r11, %r11
lea addresses_A_ht+0x18182, %rsi
lea addresses_WC_ht+0x11b2, %rdi
nop
cmp $8855, %r12
mov $21, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rbp
push %rcx

// Load
lea addresses_A+0x17c56, %r11
nop
nop
nop
nop
and $4070, %r14
movups (%r11), %xmm0
vpextrq $1, %xmm0, %r10
nop
cmp $32425, %rbp

// Store
lea addresses_US+0x1484e, %r10
add $50527, %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm0
movups %xmm0, (%r10)
nop
cmp $12456, %r15

// Store
lea addresses_RW+0x1e787, %r11
clflush (%r11)
nop
nop
nop
and %r10, %r10
movw $0x5152, (%r11)
nop
nop
nop
nop
dec %r13

// Load
lea addresses_WT+0x15456, %r15
nop
nop
nop
nop
add $41202, %r10
vmovups (%r15), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbp
nop
add $22049, %rcx

// Store
lea addresses_D+0x15956, %r10
nop
nop
sub $22136, %r13
movl $0x51525354, (%r10)

// Exception!!!
nop
mov (0), %r15
nop
nop
nop
nop
xor $40846, %rcx

// Faulty Load
lea addresses_A+0x17c56, %r10
nop
nop
nop
nop
nop
add %r14, %r14
movb (%r10), %cl
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/
