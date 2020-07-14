.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x18e63, %rax
add %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%rax)
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x1dda3, %r9
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %r13
movq %r13, %xmm5
movups %xmm5, (%r9)
nop
dec %rbx
lea addresses_WC_ht+0xc2db, %rsi
add $7562, %rbx
mov (%rsi), %r13w
nop
add $35276, %rcx
lea addresses_D_ht+0x18fa3, %rsi
lea addresses_WC_ht+0xa1a3, %rdi
nop
nop
nop
xor $8307, %rax
mov $38, %rcx
rep movsw
nop
nop
nop
nop
and $24943, %rdi
lea addresses_WT_ht+0x55a3, %rsi
nop
nop
nop
nop
sub %rcx, %rcx
mov (%rsi), %r13d
nop
nop
nop
nop
dec %r13
lea addresses_WC_ht+0xadf3, %rsi
lea addresses_D_ht+0x15ae3, %rdi
nop
nop
nop
xor $20720, %r13
mov $33, %rcx
rep movsw
nop
and %r9, %r9
lea addresses_D_ht+0x35a3, %r9
nop
nop
nop
nop
nop
dec %rbx
movb $0x61, (%r9)
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x17663, %rsi
lea addresses_A_ht+0xd8a3, %rdi
nop
add $17468, %r9
mov $98, %rcx
rep movsw
lfence
lea addresses_UC_ht+0x1ac3b, %r9
and $9851, %rcx
mov (%r9), %rsi
nop
nop
sub $47519, %r9
lea addresses_WT_ht+0x13823, %r13
nop
nop
nop
nop
add $39786, %rdi
movups (%r13), %xmm2
vpextrq $1, %xmm2, %rax
nop
nop
sub $43802, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rbp
push %rbx
push %rdx

// Store
mov $0x26c4dd00000000a3, %r11
nop
nop
nop
nop
nop
inc %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movups %xmm5, (%r11)
nop
nop
nop
nop
and %r11, %r11

// Store
lea addresses_normal+0x1c6a3, %rbx
nop
nop
nop
nop
nop
dec %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovups %ymm2, (%rbx)
nop
sub %r12, %r12

// Faulty Load
lea addresses_D+0x18da3, %rbp
cmp $14891, %r10
movups (%rbp), %xmm4
vpextrq $0, %xmm4, %rbx
lea oracles, %r15
and $0xff, %rbx
shlq $12, %rbx
mov (%r15,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 11}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 7}, 'OP': 'LOAD'}
{'36': 60}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
