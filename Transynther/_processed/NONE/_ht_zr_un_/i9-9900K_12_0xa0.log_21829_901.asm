.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1bc79, %rsi
lea addresses_WC_ht+0x2ba9, %rdi
clflush (%rdi)
nop
add $51033, %rax
mov $86, %rcx
rep movsl
xor $34716, %rsi
lea addresses_normal_ht+0x4b6d, %r15
nop
nop
xor %r11, %r11
movups (%r15), %xmm0
vpextrq $0, %xmm0, %rbp
nop
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x156b9, %rsi
nop
nop
nop
nop
nop
xor $39994, %rdi
mov (%rsi), %r11d
add %rax, %rax
lea addresses_D_ht+0x2279, %rbp
nop
nop
xor $16673, %rdi
mov (%rbp), %rsi
nop
nop
nop
add $3019, %r11
lea addresses_D_ht+0x55a9, %rcx
nop
lfence
mov (%rcx), %r11d
nop
nop
nop
and $38999, %r15
lea addresses_A_ht+0x7679, %rcx
nop
nop
cmp $30368, %r15
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
nop
nop
inc %rax
lea addresses_normal_ht+0x17e79, %rsi
lea addresses_A_ht+0x166f9, %rdi
nop
sub $64640, %r12
mov $23, %rcx
rep movsw
nop
nop
nop
nop
dec %rax
lea addresses_normal_ht+0x162b9, %rsi
lea addresses_normal_ht+0x17279, %rdi
nop
and $59188, %r12
mov $83, %rcx
rep movsl
nop
nop
nop
nop
sub $41562, %rdi
lea addresses_WC_ht+0x1c279, %rdi
nop
nop
nop
nop
nop
xor %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
inc %rdi
lea addresses_A_ht+0x15e9, %rsi
lea addresses_D_ht+0x2b79, %rdi
nop
nop
add $7637, %rbp
mov $34, %rcx
rep movsw
nop
nop
nop
nop
inc %r15
lea addresses_WC_ht+0x16834, %rsi
lea addresses_WC_ht+0x1e479, %rdi
clflush (%rdi)
nop
nop
xor %rbp, %rbp
mov $91, %rcx
rep movsl
nop
nop
nop
xor %r15, %r15
lea addresses_WT_ht+0x8e49, %rsi
lea addresses_WT_ht+0x190f9, %rdi
nop
nop
nop
nop
nop
sub $37998, %r11
mov $32, %rcx
rep movsl
add $31000, %rsi
lea addresses_A_ht+0x2861, %rsi
lea addresses_A_ht+0xb761, %rdi
nop
nop
nop
nop
nop
sub %r12, %r12
mov $97, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $12561, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rsi

// Store
lea addresses_D+0xc539, %rcx
nop
inc %rsi
mov $0x5152535455565758, %rbp
movq %rbp, (%rcx)
nop
nop
nop
nop
nop
and $42652, %rcx

// Faulty Load
lea addresses_A+0x2a79, %rcx
nop
nop
nop
nop
nop
and %r12, %r12
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': True, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'44': 99, '48': 10887, '49': 337, '00': 2472, '45': 8033, 'ff': 1}
48 45 48 00 48 45 48 45 48 45 48 00 48 00 45 48 45 48 45 48 00 48 48 49 48 45 48 45 48 45 48 48 45 48 45 48 48 48 48 45 48 45 48 45 48 00 48 48 45 48 45 48 45 48 00 48 00 49 48 00 48 45 48 45 48 45 48 45 48 48 45 48 45 48 45 00 45 48 45 48 00 45 48 45 48 45 48 45 48 00 45 49 00 48 00 45 48 45 48 45 48 00 48 48 45 48 45 48 45 48 48 45 48 45 48 00 48 00 45 48 45 48 45 00 48 45 48 45 48 00 48 48 45 48 45 48 45 48 45 45 48 45 48 48 48 45 48 45 48 45 48 45 48 48 48 45 48 45 48 45 48 45 48 45 48 45 48 48 48 48 45 48 48 00 48 00 48 44 48 00 48 45 45 48 45 48 48 48 45 48 45 48 45 48 00 45 48 45 00 45 48 45 48 48 45 00 45 48 45 48 45 48 45 48 45 48 45 48 45 48 48 48 45 48 45 48 45 48 00 48 45 48 48 45 48 45 48 45 48 00 45 48 45 00 48 48 45 48 48 45 48 49 48 45 48 00 49 44 48 00 45 48 45 48 00 48 48 45 48 45 48 45 48 45 45 48 45 48 45 48 45 48 45 00 45 48 00 48 48 45 48 45 48 45 48 00 45 48 45 00 45 48 00 48 48 45 48 49 48 45 48 45 48 00 45 48 45 00 45 48 45 48 48 45 48 45 48 45 48 45 48 48 45 00 45 48 45 48 00 45 48 45 48 45 48 00 45 48 45 48 45 48 00 48 48 45 48 45 48 45 48 45 48 45 48 45 48 00 45 48 45 48 00 48 45 48 45 48 45 48 45 48 45 48 48 45 48 45 48 00 48 00 45 48 45 48 45 48 45 48 45 48 49 45 48 45 48 45 48 45 48 00 48 48 45 48 45 48 00 48 00 45 48 45 48 45 48 00 45 48 45 00 45 48 45 48 00 45 48 48 48 45 48 45 48 45 48 48 45 48 45 48 45 48 45 48 45 45 00 45 00 45 48 45 48 00 48 45 00 45 48 45 48 48 45 48 45 48 45 48 45 48 45 48 45 48 48 48 48 45 48 45 48 00 45 48 45 48 45 48 45 48 48 45 48 45 48 45 48 00 45 48 45 48 44 48 00 48 00 49 48 45 48 45 48 45 48 00 45 48 45 00 45 48 45 48 48 45 48 45 48 45 48 00 45 48 45 48 45 48 45 48 48 48 45 48 00 48 48 48 48 45 48 45 48 00 48 45 48 00 45 48 45 48 45 48 00 48 48 45 48 45 48 45 48 00 49 00 45 48 45 48 45 48 48 48 00 45 48 48 48 45 48 45 48 45 48 49 45 48 45 48 45 48 00 45 48 45 00 45 48 45 48 45 48 48 00 48 00 48 00 48 45 48 48 45 48 45 48 45 48 45 48 45 45 48 45 48 45 48 45 48 00 48 00 48 00 48 48 48 48 45 48 45 48 45 48 45 48 45 48 48 45 48 45 48 00 48 45 48 00 45 48 45 48 45 48 45 48 48 45 48 44 48 00 48 48 45 48 45 48 45 48 45 48 48 45 48 45 48 00 48 45 48 48 45 48 45 48 45 48 48 45 48 45 48 45 48 45 48 45 00 00 48 48 45 48 45 48 45 48 45 48 45 48 45 48 45 48 00 45 00 45 48 45 48 00 49 48 45 48 45 48 45 48 45 48 49 48 48 45 48 45 48 44 45 48 45 48 45 48 00 48 48 49 48 45 48 45 48 45 45 44 45 48 45 48 00 48 48 45 48 45 48 45 48 45 48 48 45 48 44 48 45 48 48 45 48 45 48 45 48 45 48 45 48 45 48 00 45 48 45 48 00 48 48 45 48 00 48 00 48 45 48 45 48 45 48 45 48 45 48 48 45 48 45 48 00 48 00 45 48 45 48 45 48 45 48 00 45 48 45 00 45 48 45 48 00 45 48 45 48 45 48 45 48 48 45 48 45 48 45 48 48 45 48 45 48 45 48 45 48 45 48 45 48 48 48 48 45 48 45 48 45 00 48 45 48 45 48 00 48 00 45 48 45 48 45 00 48 45 48 45 48 45 48 45 00 49 48 45 48 00 45 48 48 48 45 48 45 48 45 48 45 48 49 48 48 45 48 45 48 45 48 45 48 45 48 45 48 45 48 45 48 45 49 48 45 48 45 48 45 48 45 48 49 48 45 48 45 48 45 48 48 45 48 45 48 00 48
*/
