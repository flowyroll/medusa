.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x25a4, %r12
nop
nop
nop
sub %r10, %r10
mov (%r12), %cx
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x13aa4, %rsi
lea addresses_UC_ht+0x1d5a4, %rdi
nop
nop
nop
and $24941, %rdx
mov $41, %rcx
rep movsw
nop
nop
add $42768, %rcx
lea addresses_WT_ht+0x56a4, %rcx
clflush (%rcx)
cmp %rdi, %rdi
mov $0x6162636465666768, %r10
movq %r10, (%rcx)
nop
nop
and $1797, %r10
lea addresses_A_ht+0x1c5a4, %rsi
lea addresses_D_ht+0xeae4, %rdi
nop
nop
nop
inc %rbx
mov $77, %rcx
rep movsl
nop
nop
nop
nop
nop
add $41075, %rbx
lea addresses_WC_ht+0x9978, %r12
nop
nop
sub %rbx, %rbx
mov (%r12), %edi
nop
nop
dec %rdi
lea addresses_UC_ht+0x1c724, %rdi
nop
nop
xor %rcx, %rcx
movb $0x61, (%rdi)
nop
nop
xor $30391, %rdx
lea addresses_A_ht+0x18a24, %rsi
lea addresses_WT_ht+0xd1a4, %rdi
nop
nop
nop
sub %r11, %r11
mov $120, %rcx
rep movsw
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x103a4, %rsi
lea addresses_A_ht+0x1aba4, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $28909, %rbx
mov $58, %rcx
rep movsw
inc %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %r9
push %rbx
push %rdi

// Store
lea addresses_PSE+0x1d2a4, %rdi
nop
nop
nop
nop
nop
and %r13, %r13
movw $0x5152, (%rdi)
nop
nop
nop
nop
sub %r10, %r10

// Store
lea addresses_A+0x4da4, %r15
clflush (%r15)
nop
nop
nop
nop
xor $28258, %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovups %ymm1, (%r15)
nop
inc %rbx

// Store
lea addresses_WC+0x12e34, %r13
nop
nop
nop
nop
add %r10, %r10
movl $0x51525354, (%r13)
cmp %r13, %r13

// Store
lea addresses_PSE+0x15540, %r15
nop
nop
nop
sub $59862, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movaps %xmm5, (%r15)
nop
dec %r9

// Store
mov $0x7843330000000ec7, %rbx
nop
sub %r10, %r10
movw $0x5152, (%rbx)
nop
cmp %r13, %r13

// Store
mov $0x3d93e90000000f04, %r12
nop
and $52585, %r10
mov $0x5152535455565758, %rdi
movq %rdi, (%r12)
nop
nop
nop
nop
add $26776, %rdi

// Faulty Load
lea addresses_D+0x1fda4, %r12
nop
nop
nop
dec %r13
mov (%r12), %r10
lea oracles, %r13
and $0xff, %r10
shlq $12, %r10
mov (%r13,%r10,1), %r10
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'36': 2}
36 36
*/
