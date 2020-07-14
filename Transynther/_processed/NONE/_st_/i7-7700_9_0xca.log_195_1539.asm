.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x9ea4, %rsi
nop
nop
add %rax, %rax
movb $0x61, (%rsi)
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0xdfa4, %r13
nop
nop
sub %rdi, %rdi
movb (%r13), %al
nop
nop
nop
nop
sub $59995, %rbp
lea addresses_A_ht+0x176a4, %rsi
lea addresses_WT_ht+0x19884, %rdi
nop
nop
nop
nop
nop
xor $54359, %rbx
mov $48, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WT_ht+0xfc90, %rsi
clflush (%rsi)
nop
nop
nop
nop
and %r13, %r13
movb $0x61, (%rsi)
nop
sub %rax, %rax
lea addresses_WT_ht+0x1091a, %rsi
lea addresses_WT_ht+0x134a4, %rdi
nop
nop
xor %rdx, %rdx
mov $81, %rcx
rep movsw
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0x15024, %rdx
nop
nop
nop
nop
sub $57871, %rcx
movl $0x61626364, (%rdx)
nop
and $27067, %rcx
lea addresses_UC_ht+0x17ea4, %rsi
nop
nop
nop
nop
nop
inc %rcx
mov (%rsi), %r13d
and $19764, %rbp
lea addresses_WT_ht+0x189a4, %rcx
nop
nop
nop
nop
xor %rax, %rax
vmovups (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdx
nop
nop
nop
and $10285, %rdx
lea addresses_WC_ht+0x13ba4, %rsi
lea addresses_UC_ht+0x1c3a4, %rdi
nop
add %rdx, %rdx
mov $124, %rcx
rep movsb
cmp $55053, %rdi
lea addresses_D_ht+0x17aa4, %rsi
clflush (%rsi)
nop
nop
nop
nop
xor %rcx, %rcx
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm3
vpextrq $0, %xmm3, %rbp
nop
nop
nop
nop
sub $6163, %rdx
lea addresses_UC_ht+0x155a4, %rsi
lea addresses_UC_ht+0xb314, %rdi
nop
nop
sub $27250, %rbp
mov $61, %rcx
rep movsq
nop
sub $59878, %rsi
lea addresses_UC_ht+0xfea4, %rsi
lea addresses_WT_ht+0x1be64, %rdi
nop
nop
nop
nop
xor $4313, %rbp
mov $97, %rcx
rep movsb
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x148d4, %rsi
lea addresses_D_ht+0xe7f5, %rdi
nop
and %rax, %rax
mov $6, %rcx
rep movsw
nop
nop
nop
xor $5051, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rax
push %rbp
push %rdx

// Store
lea addresses_A+0x12844, %r10
and $58220, %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%r10)
and $15832, %rdx

// Store
mov $0x6a4, %r15
nop
nop
and %rbp, %rbp
movb $0x51, (%r15)
sub $57210, %r15

// Store
lea addresses_normal+0x1b9a4, %r12
nop
add %r10, %r10
movb $0x51, (%r12)
nop
nop
nop
sub $60599, %rdx

// Faulty Load
lea addresses_A+0x116a4, %rax
clflush (%rax)
nop
nop
nop
nop
xor %r15, %r15
mov (%rax), %bp
lea oracles, %rax
and $0xff, %rbp
shlq $12, %rbp
mov (%rax,%rbp,1), %rbp
pop %rdx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}}
{'51': 195}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
