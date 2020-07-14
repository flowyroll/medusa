.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x16832, %rsi
lea addresses_WT_ht+0x6632, %rdi
xor $42825, %r9
mov $100, %rcx
rep movsb
nop
nop
nop
nop
nop
add $43642, %rbp
lea addresses_UC_ht+0x113b2, %r14
nop
nop
nop
nop
nop
cmp $59353, %rcx
mov (%r14), %esi
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x3232, %rcx
nop
cmp %rdi, %rdi
movl $0x61626364, (%rcx)
nop
and $59319, %rcx
lea addresses_normal_ht+0xf232, %rsi
lea addresses_D_ht+0xea52, %rdi
inc %r10
mov $63, %rcx
rep movsw
nop
nop
sub $19657, %r14
lea addresses_WT_ht+0x116e2, %rsi
lea addresses_A_ht+0x61fa, %rdi
nop
nop
nop
add $14044, %rbx
mov $111, %rcx
rep movsl
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x17a32, %r14
nop
dec %r10
mov (%r14), %di
nop
sub $65502, %r14
lea addresses_normal_ht+0x58c2, %rbp
nop
nop
nop
nop
nop
add %r10, %r10
mov $0x6162636465666768, %r9
movq %r9, (%rbp)
nop
nop
nop
nop
nop
sub $60307, %r10
lea addresses_A_ht+0x6a12, %rsi
lea addresses_UC_ht+0x3832, %rdi
nop
nop
nop
nop
nop
cmp $55678, %r10
mov $50, %rcx
rep movsq
nop
nop
nop
nop
inc %r9
lea addresses_UC_ht+0x19732, %r9
nop
add $24544, %rsi
movb $0x61, (%r9)
inc %rdi
lea addresses_D_ht+0x1e032, %rsi
nop
nop
nop
nop
and $29388, %r10
mov (%rsi), %r14d
nop
nop
and %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rbp
push %rdx
push %rsi

// Store
lea addresses_A+0x19ba6, %r13
clflush (%r13)
nop
nop
nop
xor %rdx, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, (%r13)
nop
nop
nop
nop
nop
and $56868, %r11

// Faulty Load
lea addresses_US+0x14632, %rbp
nop
nop
nop
nop
add $54532, %r13
mov (%rbp), %r11w
lea oracles, %rbp
and $0xff, %r11
shlq $12, %r11
mov (%rbp,%r11,1), %r11
pop %rsi
pop %rdx
pop %rbp
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'00': 8}
00 00 00 00 00 00 00 00
*/
