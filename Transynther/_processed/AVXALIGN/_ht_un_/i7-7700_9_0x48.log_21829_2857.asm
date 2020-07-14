.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x10e79, %rdi
nop
nop
nop
sub %rsi, %rsi
movw $0x6162, (%rdi)
nop
nop
xor $47713, %rdi
lea addresses_UC_ht+0x592b, %rsi
lea addresses_WC_ht+0xf079, %rdi
nop
nop
nop
and $24482, %r10
mov $13, %rcx
rep movsb
nop
nop
inc %r14
lea addresses_WT_ht+0x18c79, %rsi
lea addresses_WC_ht+0x14679, %rdi
nop
nop
xor $27612, %rbx
mov $117, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %r14
lea addresses_UC_ht+0x191f9, %rbx
nop
nop
nop
nop
nop
sub %r9, %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
and $0xffffffffffffffc0, %rbx
movaps %xmm5, (%rbx)
nop
nop
sub %r9, %r9
lea addresses_WC_ht+0x2679, %rbx
nop
nop
nop
nop
nop
cmp $31512, %rdi
mov $0x6162636465666768, %r9
movq %r9, (%rbx)
nop
nop
nop
nop
and %r10, %r10
lea addresses_normal_ht+0xec79, %rsi
lea addresses_WC_ht+0xae79, %rdi
and $55122, %rax
mov $93, %rcx
rep movsl
add $23450, %rcx
lea addresses_UC_ht+0x13ff9, %r14
dec %rbx
mov $0x6162636465666768, %rax
movq %rax, %xmm6
movups %xmm6, (%r14)
nop
nop
and $44104, %r9
lea addresses_normal_ht+0x180e1, %r10
nop
nop
nop
nop
nop
sub $10593, %rax
movb $0x61, (%r10)
nop
nop
nop
nop
add $28588, %rax
lea addresses_WT_ht+0x10919, %rsi
lea addresses_UC_ht+0xdf89, %rdi
nop
nop
nop
nop
nop
and $52392, %r10
mov $52, %rcx
rep movsl
nop
nop
xor %r9, %r9
lea addresses_WT_ht+0x8749, %r10
nop
nop
add %rdi, %rdi
movb $0x61, (%r10)
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0xea79, %rbx
nop
nop
nop
nop
nop
cmp $1318, %rsi
movw $0x6162, (%rbx)
nop
nop
nop
sub $59552, %r14
lea addresses_D_ht+0xf379, %rcx
add $25999, %rax
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
nop
nop
nop
xor $39531, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi

// Store
lea addresses_A+0x31b9, %r9
nop
nop
nop
nop
nop
and $65308, %rdi
movb $0x51, (%r9)
nop
nop
nop
nop
xor $21873, %rdi

// Store
lea addresses_normal+0xee79, %r14
nop
nop
and $63140, %rcx
movb $0x51, (%r14)
sub %r10, %r10

// Faulty Load
lea addresses_UC+0xa679, %r9
clflush (%r9)
sub %r10, %r10
movaps (%r9), %xmm2
vpextrq $1, %xmm2, %r14
lea oracles, %r13
and $0xff, %r14
shlq $12, %r14
mov (%r13,%r14,1), %r14
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': True, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'49': 20677, '44': 1151, '08': 1}
49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 44 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 44 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 44 49 49 49 49 49 49 49
*/
