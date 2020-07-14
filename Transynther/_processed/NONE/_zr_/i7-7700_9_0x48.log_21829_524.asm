.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x9d0a, %rbx
nop
xor $52447, %r11
movl $0x61626364, (%rbx)
nop
nop
nop
dec %r12
lea addresses_normal_ht+0x10612, %rdx
nop
nop
nop
nop
sub $33996, %rbp
movl $0x61626364, (%rdx)
nop
nop
nop
nop
nop
xor $17597, %rbp
lea addresses_WT_ht+0x1b9ec, %rdx
nop
nop
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
movups %xmm5, (%rdx)
nop
nop
and $5328, %rbx
lea addresses_WT_ht+0xce12, %rdx
nop
cmp %rbx, %rbx
movw $0x6162, (%rdx)
nop
nop
nop
sub $29335, %r11
lea addresses_UC_ht+0x19012, %rbx
nop
nop
add $50646, %r9
mov $0x6162636465666768, %r12
movq %r12, %xmm4
vmovups %ymm4, (%rbx)
nop
cmp $46655, %r9
lea addresses_WT_ht+0xdb52, %rsi
lea addresses_A_ht+0x10112, %rdi
nop
nop
nop
and $11335, %r8
mov $74, %rcx
rep movsl
and %rcx, %rcx
lea addresses_D_ht+0x2e92, %rsi
nop
nop
nop
nop
nop
xor $59741, %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
nop
nop
xor $4384, %rdx
lea addresses_normal_ht+0xebe2, %r11
nop
nop
sub %rbx, %rbx
movb $0x61, (%r11)
nop
nop
nop
nop
nop
and $30955, %rsi
lea addresses_WT_ht+0x15e12, %rsi
lea addresses_D_ht+0x975e, %rdi
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $30, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $57043, %rbx
lea addresses_WT_ht+0x26a2, %rsi
lea addresses_WT_ht+0xa59a, %rdi
nop
nop
nop
add $23584, %rbp
mov $64, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $26304, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdx

// Load
lea addresses_WT+0x1f12, %rax
nop
nop
cmp %rcx, %rcx
mov (%rax), %edx
nop
nop
nop
nop
nop
add %rcx, %rcx

// Load
lea addresses_UC+0x8c32, %rcx
nop
nop
nop
nop
nop
sub $65000, %rbx
movaps (%rcx), %xmm3
vpextrq $1, %xmm3, %r10
dec %rax

// Faulty Load
lea addresses_UC+0x1f612, %rdx
nop
nop
nop
nop
nop
cmp $58072, %r13
mov (%rdx), %eax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 5, 'size': 16, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
